import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FollowingScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  FollowingScreen({super.key});

  void _createFollowing(String email, User user) {
    FirebaseFirestore.instance.collection("following").doc(user.uid).set({
      "following": [email],
    });
  }

  void _updateFollowing(String email, User user) {
    FirebaseFirestore.instance.collection("following").doc(user.uid).update({
      "following": FieldValue.arrayUnion([email]),
    });
  }

  void _removeFollowing(String email, User user) {
    FirebaseFirestore.instance.collection("following").doc(user.uid).update({
      "following": FieldValue.arrayRemove([email]),
    });
  }

  void _addFollowing(String email) {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    // check if following document exists
    FirebaseFirestore.instance.collection("following").doc(user.uid).get().then(
      (doc) {
        if (doc.exists) {
          _updateFollowing(email, user);
        } else {
          _createFollowing(email, user);
        }
      },
    );
  }

  void _openAddFriendDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  labelText: "User's email to follow",
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  _addFollowing(controller.text);
                  controller.clear();
                  Navigator.of(context).pop();
                },
                child: const Text("Follow user"),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Following"),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_search_rounded),
            onPressed: () => _openAddFriendDialog(context),
          )
        ],
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("following")
              .doc(user!.uid)
              .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final followingData = snapshot.data!.data();
            if (followingData == null) {
              return const Center(
                child: Text("You are not following anyone"),
              );
            }

            final following = followingData["following"];

            return ListView.builder(
              itemCount: following.length,
              itemBuilder: (context, index) {
                final email = following[index];
                return ListTile(
                  contentPadding:
                      EdgeInsets.only(right: 0, left: 16, top: 8, bottom: 8),
                  title: Text(email),
                  onTap: () {
                    // open the user's profile
                  },
                  trailing: IconButton(
                    icon: const Icon(Icons.cancel),
                    onPressed: () {
                      _removeFollowing(email, user);
                    },
                  ),
                );
              },
            );
          }),
    );
  }
}

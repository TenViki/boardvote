import 'package:boardvote/services/userboards_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";

class BbgIntegration extends StatelessWidget {
  const BbgIntegration({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection("userdata").snapshots(),
      builder: (context, snapshot) {
        print(
            "${snapshot.connectionState} ${snapshot.hasData} ${snapshot.hasError} ${snapshot.error}");
        if (!snapshot.hasData) return CircularProgressIndicator();

        // get data where user id is the same as the current user
        final userData = snapshot.data!.docs.firstWhereOrNull(
          (doc) => doc["uid"] == FirebaseAuth.instance.currentUser!.uid,
          // orElse: () => null,
        );

        return BbgIntegrationForm(
          username: userData != null ? userData["username"] : null,
          collectionId: userData != null ? userData.id : null,
        );
      },
    );
  }
}

class BbgIntegrationForm extends ConsumerStatefulWidget {
  final String? username;
  final String? collectionId;
  const BbgIntegrationForm({super.key, this.username, this.collectionId});

  @override
  ConsumerState<BbgIntegrationForm> createState() => _BbgIntegrationFormState();
}

class _BbgIntegrationFormState extends ConsumerState<BbgIntegrationForm> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    final boardService = ref.read(boardServiceProvider.notifier);

    Future.delayed(Duration.zero, () {
      if (widget.username != null) {
        boardService
            .getBoardgamesForUser(FirebaseAuth.instance.currentUser!.uid);
      }
    });

    // TODO: implement initState
    controller.text = widget.username ?? "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final boardState = ref.watch(boardServiceProvider);
    final boardService = ref.read(boardServiceProvider.notifier);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              labelText: "BoardGameGeek Username",
            ),
          ),
        ),
        SizedBox(width: 16),
        ElevatedButton(
          onPressed: () async {
            // save the username to the database
            final collection =
                FirebaseFirestore.instance.collection("userdata");

            if (widget.collectionId != null) {
              await collection
                  .doc(widget.collectionId)
                  .update({"username": controller.text});
            } else {
              await collection.add({
                "uid": FirebaseAuth.instance.currentUser!.uid,
                "username": controller.text,
              });
            }

            // show a snackbar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Username saved!"),
              ),
            );

            // sync the collection
            boardService.syncCollection(controller.text);
          },
          child: boardState is BoardsLoading
              ? CircularProgressIndicator()
              : Text("Save"),
        ),
      ],
    );
  }
}

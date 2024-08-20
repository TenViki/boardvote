import 'package:boardvote/models/session.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final followedProvider = StreamProvider((ref) {
  final user = FirebaseAuth.instance.currentUser;
  return FirebaseFirestore.instance
      .collection("following")
      .doc(user!.uid)
      .snapshots();
});

final feedProvider = StreamProvider((ref) {
  // get all followed users
  final user = FirebaseAuth.instance.currentUser;
  final followed = ref.watch(followedProvider).value;

  if (followed != null) {
    final following = followed.data()!["following"] as List<dynamic>;
    following.add(user!.email);

    // get all sessions from followed users
    final docRef = FirebaseFirestore.instance
        .collection("sessions")
        .where("publisherEmail", whereIn: following);

    // print("Got sessions: ${sessions}");

    return docRef.snapshots().map((sessions) {
      return sessions.docs
          .map((doc) => Session.fromJson({"id": doc.id, ...doc.data()}))
          .toList();
    });
  }

  return const Stream.empty();
});

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserHeader extends StatelessWidget {
  final User user;
  const UserHeader({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        user.photoURL != null
            ? CircleAvatar(
                backgroundImage: NetworkImage(user.photoURL!),
              )
            : const Icon(Icons.person),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.displayName ?? user.email ?? 'Anonymous'),
              Text(user.email ?? 'No email'),
            ],
          ),
        ),
        IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () => FirebaseAuth.instance.signOut(),
        ),
      ],
    );
  }
}

import 'package:boardvote/components/page_title.dart';
import 'package:flutter/material.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const ScreenTitle(text: "Friends"),
        ],
      ),
    );
  }
}

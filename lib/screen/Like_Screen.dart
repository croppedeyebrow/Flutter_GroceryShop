import "package:flutter/material.dart";
import "package:flutter_groceryshop/widget/LikeAppBar.dart";

class LikeScreen extends StatelessWidget {
  const LikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [LikeAppBar()],
      ),
    );
  }
}

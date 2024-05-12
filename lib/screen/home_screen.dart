import "package:flutter/material.dart";
import "package:flutter_groceryshop/widget/HomeAppBar.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            padding: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(color: Color(0xffedecf2)),
          )
        ],
      ),
    );
  }
}

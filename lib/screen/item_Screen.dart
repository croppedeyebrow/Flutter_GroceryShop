import "package:flutter/material.dart";
import "package:flutter_groceryshop/widget/ItemAppBar.dart";

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffedecf2),
        body: ListView(
          children: [ItemAppBar()],
        ));
  }
}

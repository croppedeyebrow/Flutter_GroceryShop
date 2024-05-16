import "package:flutter/material.dart";
import "package:flutter_groceryshop/widget/BoardAppBar.dart";
import "package:flutter_groceryshop/widget/BoardListScreen.dart";

class BoardScreen extends StatelessWidget {
  const BoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // BoardAppBar(),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 14),
              decoration: BoxDecoration(
                  color: Color(0xffedecf2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(34),
                      topRight: Radius.circular(34))),
              child: BoardList(),
            ),
          ),
        ],
      ),
    );
  }
}

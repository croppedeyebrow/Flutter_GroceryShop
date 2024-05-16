import "package:flutter/material.dart";
import "package:flutter_groceryshop/widget/BoardAppBar.dart";
import "package:flutter_groceryshop/widget/BoardListScreen.dart";

class BoardScreen extends StatelessWidget {
  const BoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          BoardAppBar(),
          Container(
            padding: EdgeInsets.only(top: 14),
            decoration: BoxDecoration(
                color: Color(0xffedecf2),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(34))),
            child: Column(
              children: [
                BoardList(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 22, vertical: 14),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff4c53a5),
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      // bottomNavigationBar: LikeBottomNavBar()
    );
  }
}

import "package:flutter/material.dart";
import "package:flutter_groceryshop/widget/LikeAppBar.dart";
import "package:flutter_groceryshop/widget/LikeBottomNavBar.dart";
import "package:flutter_groceryshop/widget/LikeItemList.dart";

class LikeScreen extends StatelessWidget {
  const LikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            LikeAppBar(),
            Container(
              padding: EdgeInsets.only(top: 14),
              decoration: BoxDecoration(
                  color: Color(0xffedecf2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(34),
                      topRight: Radius.circular(34))),
              child: Column(
                children: [
                  LikeItemList(),
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
        bottomNavigationBar: LikeBottomNavBar());
  }
}

import "package:flutter/material.dart";
import "package:flutter_groceryshop/widget/CartAppBar.dart";
import "package:flutter_groceryshop/widget/CartItemList.dart";

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 14),
            decoration: BoxDecoration(
                color: Color(0xffedecf2),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(34))),
            child: Column(
              children: [CartItemList()],
            ),
          )
        ],
      ),
    );
  }
}

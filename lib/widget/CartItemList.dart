import "package:flutter/material.dart";

class CartItemList extends StatelessWidget {
  const CartItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Radio(
              value: "",
              groupValue: "",
              activeColor: Color(0xff4c53a5),
              onChanged: (index) {},
            )
          ],
        ));
  }
}

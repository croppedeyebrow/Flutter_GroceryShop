import "package:flutter/material.dart";
import "package:flutter_groceryshop/widget/CartAppBar.dart";
import "package:flutter_groceryshop/widget/CartBottomNavBar.dart";
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
              padding: EdgeInsets.only(top: 14),
              decoration: BoxDecoration(
                  color: Color(0xffedecf2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(34),
                      topRight: Radius.circular(34))),
              child: Column(
                children: [
                  CartItemList(),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 22, vertical: 14),
                    padding: EdgeInsets.all(10),
                    child: Row(
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
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "쿠폰 번호 입력",
                            style: TextStyle(
                                color: Color(0xff4c53a5),
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: CartBottomNavBar());
  }
}

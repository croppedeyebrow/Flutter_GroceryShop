import "package:flutter/material.dart";

class ItemBottomNavBar extends StatelessWidget {
  final int itemprice;

  ItemBottomNavBar({required this.itemprice});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\₩${itemprice}",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff4c53a5)),
          ),
          ElevatedButton.icon(
            onPressed: () {
              print("장바구니에 추가");
            },
            icon: Icon(Icons.add_shopping_cart, color: Colors.amberAccent),
            label: Text(
              "장바구니에 추가",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xff4c53a5)),
            ),
          )
        ],
      ),
    );
  }
}

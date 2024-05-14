import "package:flutter/material.dart";
import 'package:badges/badges.dart' as badges;
import 'package:flutter_groceryshop/screen/Cart_Screen.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(26),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 32,
            color: Color(0xff4c53a5),
          ),
          Padding(
            padding: EdgeInsets.only(left: 90),
            child: Text(
              "SulSom",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: AutofillHints.countryCode,
                  color: Color(0xff4c53a5)),
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeContent: Text(
              "4",
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ));
              },
              child: Icon(
                Icons.shopping_basket,
                size: 32,
                color: Color(0xff4c53a5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

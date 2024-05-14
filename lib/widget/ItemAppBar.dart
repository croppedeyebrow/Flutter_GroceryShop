import "package:flutter/material.dart";

class ItemAppBar extends StatelessWidget {
  final String itemname;

  ItemAppBar({required this.itemname});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(24),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Color(0xff4c53a5),
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              itemname,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4c53a5)),
            ),
          ),
          Spacer(),
          Icon(
            Icons.favorite_border,
            color: Colors.red,
            size: 30,
          )
        ],
      ),
    );
  }
}

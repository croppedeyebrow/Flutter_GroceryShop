import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class ItemAppBar extends StatelessWidget {
  final String itemname;
  final String itemsize;
  final String itemlevel;

  ItemAppBar(
      {required this.itemname,
      required this.itemsize,
      required this.itemlevel});

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
          Flexible(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                itemname + " " + itemlevel + " " + itemsize,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4c53a5)),
                overflow: TextOverflow.ellipsis,
              ),
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

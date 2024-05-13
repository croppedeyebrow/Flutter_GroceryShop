import "package:flutter/material.dart";

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({super.key});

  List<String> categories = [
    "15도 미만",
    "15도이상 35도 미만",
    "35도이상 45도 미만",
    "45도 이상",
    "깔끔한 맛",
    "달달한 맛"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 7; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/itemimages/$i.png",
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    categories[i - 1],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Color(0xff4c53a5)),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}

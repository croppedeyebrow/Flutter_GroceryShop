import "package:flutter/material.dart";
import "package:flutter_groceryshop/widget/CategoriesWidget.dart";
import "package:flutter_groceryshop/widget/HomeAppBar.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            height: 500,
            padding: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
                color: Color(0xffedecf2),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36))),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 6),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "검색어를 입력하세요...",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search_sharp,
                        size: 20,
                        color: Color(0xff4c53a5),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "제품 목록",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4c53a5)),
                  ),
                ),

                //카테고리
                  CategoriesWidget(),

              ],
            ),
          )
        ],
      ),
    );
  }
}

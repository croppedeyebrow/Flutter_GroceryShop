import "package:clippy_flutter/arc.dart";
import "package:flutter/material.dart";
import "package:flutter_groceryshop/widget/ItemAppBar.dart";
import "package:flutter_groceryshop/widget/itemBottomNavBar.dart";
import "package:flutter_rating_bar/flutter_rating_bar.dart";

class ItemScreen extends StatelessWidget {
  final String itemimg;
  final String itemname;
  final String itemsize;
  final String itemlevel;
  final int itemprice;

  ItemScreen(
      {required this.itemimg,
      required this.itemname,
      required this.itemsize,
      required this.itemlevel,
      required this.itemprice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedecf2),
      body: ListView(
        children: [
          ItemAppBar(
              itemname: itemname, itemsize: itemsize, itemlevel: itemlevel),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "images/itemimages/$itemimg",
              height: 300,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            height: 30,
            arcType: ArcType.CONVEY,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              itemname,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff4c53a5)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 20,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => Icon(
                                Icons.favorite,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (index) {},
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 3,
                                            blurRadius: 8,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: Icon(
                                    Icons.remove,
                                    size: 18,
                                  ),
                                ),
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff4c53a5)),
                                    )),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 3,
                                            blurRadius: 8,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: Icon(
                                    Icons.add,
                                    size: 18,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Column(
                          children: [
                            Text(
                              "최소 주문 수량은 1개 이상입니다.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                            Text(
                              "상품의 자세한 정보는 상세페이지를 확인해주세요",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "용량: ",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff4c53a5)),
                            ),
                            SizedBox(width: 4),
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 80,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal: 6),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(32),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 8,
                                        )
                                      ]),
                                  child: Text(
                                    itemsize,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff4c53a5)),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              " 일반 소주의 한병 분량이 350ml입니다.",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "도수: ",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff4c53a5)),
                            ),
                            SizedBox(width: 4),
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 80,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal: 6),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(32),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 8,
                                        )
                                      ]),
                                  child: Text(
                                    itemlevel,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff4c53a5)),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              " 일반 소주의 도수는 17,8도입니다.",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          )
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(itemprice: itemprice),
    );
  }
}

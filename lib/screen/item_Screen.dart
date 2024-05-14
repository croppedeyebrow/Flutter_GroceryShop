import "package:clippy_flutter/arc.dart";
import "package:flutter/material.dart";
import "package:flutter_groceryshop/widget/ItemAppBar.dart";
import "package:flutter_rating_bar/flutter_rating_bar.dart";

class ItemScreen extends StatelessWidget {
  final String itemimg;
  final String itemname;

  ItemScreen({required this.itemimg, required this.itemname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffedecf2),
        body: ListView(
          children: [
            ItemAppBar(itemname: itemname),
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
                          padding: EdgeInsets.only(top: 50, bottom: 20),
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
                                initialRating: 5,
                                minRating: 0,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 20,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, _) => Icon(
                                  Icons.favorite,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (index) {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            )
          ],
        ));
  }
}

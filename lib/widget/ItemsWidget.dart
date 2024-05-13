import "package:flutter/material.dart";

class ItemsWidget extends StatefulWidget {
  @override
  State<ItemsWidget> createState() => _ItemsWidgetState();
}

class _ItemsWidgetState extends State<ItemsWidget> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.7,
      // physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color(0xff4c53a5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "-45%",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  // Icon(Icons.favorite_border, color: Colors.redAccent),
                  // Icon(
                  //   Icons.favorite,
                  //   color: Colors.redAccent,
                  // )
                  IconButton(
                    icon: Icon(
                      _isFavorited ? Icons.favorite : Icons.favorite_border,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {
                      setState(() {
                        _isFavorited = !_isFavorited;
                      });
                    },
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/itemimages/1.png",
                    height: 90,
                    width: 90,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                alignment: Alignment.center,
                child: Text(
                  "댄싱사이더 댄싱파파 6도 330ml 사과 사이더",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4c53a5)),
                ),
              ),
              Container(
                height: 1,
                color: Colors.black.withOpacity(0.3), // Or any other color.
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "₩ 5,900",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Text(
                      "₩ 3,245",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4c53a5)),
                    ),
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Color(0xff4c53a5),
                      size: 16,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

import "package:flutter/material.dart";

class LikeBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total: ",
                style: TextStyle(
                    color: Color(0xff4c53a5),
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Text(
                "\₩147,000",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                    fontSize: 26),
              )
            ],
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff4c53a5),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "찜한 상품 결제하기",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Icon(Icons.shopping_bag_rounded, color: Colors.white, size: 30)
              ],
            ),
          )
        ],
      ),
    );
  }
}

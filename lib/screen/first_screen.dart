import "package:flutter/material.dart";
import "package:flutter_groceryshop/utils/colors.dart";

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColors,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2.2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                "images/liquerlogo.png",
                height: 300,
                width: 300,
                color: Color.fromARGB(255, 146, 26, 170),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "술숨",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 38,
                  color: Color.fromARGB(255, 146, 26, 170),
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(-1.5, -1.5),
                      color: Colors.white,
                    ),
                  ]),
            ),
            Text(
              "[SulSum]",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 19,
                color: Color.fromARGB(
                  255,
                  146,
                  26,
                  170,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "전통주와 함께하는 특별한 시간",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color.fromARGB(
                      255,
                      146,
                      26,
                      170,
                    ),
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(-1.5, -1.5),
                        color: Colors.white,
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

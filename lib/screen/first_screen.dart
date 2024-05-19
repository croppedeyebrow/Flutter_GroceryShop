import "dart:math";

import "package:flutter/material.dart";
import "package:flutter_groceryshop/screen/LogIn_Screen.dart";
import "package:flutter_groceryshop/screen/home_screen.dart";
import "package:flutter_groceryshop/utils/colors.dart";
import "package:flutter_groceryshop/widget/navbar_roots.dart";

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LogInScreen(),
            ),
          );
        },
        child: Container(
          child: Image.asset(
            "images/background.jpg",
            fit: BoxFit.cover,
            height: screenSize.height,
            width: screenSize.width,
          ),
        ),
      ),
    );
  }
}


      // backgroundColor: primaryColors,
      // body: Center(
      //   child: Column(
      //     children: [
      //       SizedBox(height: 80),
      //       Container(
      //         decoration: BoxDecoration(
      //           border: Border.all(
      //             color: Colors.white,
      //             width: 2.2,
      //           ),
      //           borderRadius: BorderRadius.circular(60),
      //         ),
      //         child: Transform.rotate(
      //           angle: pi / 4,
      //           child: Container(
      //             decoration: BoxDecoration(
      //               border: Border.all(color: Colors.white, width: 2.2),
      //               borderRadius: BorderRadius.circular(60),
      //             ),
      //             child: Transform.rotate(
      //               angle: -pi / 4,
      //               child: Image.asset(
      //                 "images/liquerlogo.png",
      //                 height: 360,
      //                 width: 360,
      //                 color: Color.fromARGB(255, 146, 26, 170),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //       SizedBox(height: 80),
      //       Text(
      //         "술숨",
      //         style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 38,
      //             color: Color.fromARGB(255, 146, 26, 170),
      //             shadows: <Shadow>[
      //               Shadow(
      //                 offset: Offset(-1.5, -1.5),
      //                 color: Colors.white,
      //               ),
      //             ]),
      //       ),
      //       Text(
      //         "[SulSum]",
      //         style: TextStyle(
      //           fontWeight: FontWeight.w300,
      //           fontSize: 19,
      //           color: Color.fromARGB(
      //             255,
      //             146,
      //             26,
      //             170,
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.only(top: 20),
      //         child: Text(
      //           "전통주와 함께하는 특별한 시간",
      //           style: TextStyle(
      //               fontWeight: FontWeight.w300,
      //               fontSize: 14,
      //               color: Color.fromARGB(
      //                 255,
      //                 146,
      //                 26,
      //                 170,
      //               ),
      //               shadows: <Shadow>[
      //                 Shadow(
      //                   offset: Offset(-1.5, -1.5),
      //                   color: Colors.white,
      //                 ),
      //               ]),
      //         ),
      //       ),
      // SizedBox(height: 30),
      // Container(
      //     width: double.maxFinite,
      //     height: 50,
      //     margin: EdgeInsets.all(10),
      //     child: ElevatedButton(
      //       style: ElevatedButton.styleFrom(
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(16),
      //         ),
      //       ),
      //       onPressed: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => LogInScreen(),
      //             ));
      //       },
      //       child: Text(
      //         "시작하기",
      //         style: TextStyle(
      //           fontSize: 18,
      //           fontWeight: FontWeight.bold,
      //           color: Color.fromARGB(
      //             255,
      //             146,
      //             26,
      //             170,
      //           ),
      //         ),
      //       ),
      //     )),
      //       ],
      //     ),
      //   ),

import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class SettingAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(24),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              //뒤로가기
              Navigator.pop(context);
            },
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [
                  Color.fromARGB(255, 167, 28, 192),
                  Color.fromARGB(255, 255, 231, 209),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(bounds),
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            // child: Text(
            //   "마이페이지",
            //   style: TextStyle(
            //       fontSize: 26,
            //       fontWeight: FontWeight.bold,
            //       color: Color(0xff4c53a5)),
            // ),
          ),
          SizedBox(
            width: 4,
          ),
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(colors: [
              Color.fromARGB(255, 167, 28, 192),
              Color.fromARGB(255, 255, 231, 209)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                .createShader(bounds),
            child: Icon(Icons.perm_contact_calendar_sharp,
                color: Colors.white, size: 30),
          ),
          Spacer(),
          Icon(
            Icons.colorize_sharp,
            size: 30,
            color: Color(0xff4c53a5),
          )
        ],
      ),
    );
  }
}

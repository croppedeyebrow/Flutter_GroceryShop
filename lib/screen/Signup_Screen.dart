import "package:flutter/material.dart";
import "package:flutter_groceryshop/utils/My_Button.dart";
import "package:flutter_groceryshop/utils/My_TextField.dart";
import "package:flutter_groceryshop/utils/square_tile.dart";

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // [primaryColors]
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 255, 231, 209),
                Color.fromARGB(255, 167, 28, 192),
              ]),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              // logo
              children: [
                SizedBox(height: 50),
                Icon(Icons.assignment_sharp, size: 100, color: Colors.white),

                SizedBox(height: 50),

                //welcome

                Text(
                  "주향이 가득한 곳 [술솜]입니다. \n어서오세요, 반갑습니다",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 25),

                //username textfield
                MyTextField(
                    controller: usernameController,
                    hintText: "아이디 입력하세요",
                    obscureText: false),

                SizedBox(height: 25),

                //password textfield
                MyTextField(
                    controller: passwordController,
                    hintText: "비밀번호 입력하세요",
                    obscureText: true),

                SizedBox(height: 14),

                //forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "비밀번호를 잊으셨나요?",
                        style: TextStyle(
                            color: Colors.amberAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25),

                //sigin in button
                MyButton(),

                SizedBox(height: 25),

                //or continue with
                Text(
                  "또는",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 0.25,
                        color: Colors.white,
                      )),
                      SizedBox(width: 8),
                      Text(
                        "SNS 계정으로 로그인하세요",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Divider(
                        thickness: 0.25,
                        color: Colors.white,
                      )),
                    ],
                  ),
                ),

                SizedBox(height: 25),
                //google + kakao sign in button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: "images/google.png"),
                    SizedBox(width: 20),
                    SquareTile(imagePath: "images/kakao.png"),
                    SizedBox(width: 20),
                    SquareTile(imagePath: "images/apple.png"),
                  ],
                ),

                SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "아직 술솜의 가족이 아니신가요?",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    SizedBox(width: 4),
                    Text(
                      "지금 합류하세요!",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.amberAccent,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )

                //not a member? sign up
              ],
            ),
          ),
        ),
      ),
    );
  }
}

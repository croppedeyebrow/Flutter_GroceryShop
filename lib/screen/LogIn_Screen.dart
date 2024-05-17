import "package:flutter/material.dart";
import "package:flutter_groceryshop/utils/My_Button.dart";
import "package:flutter_groceryshop/utils/My_TextField.dart";

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // [primaryColors
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
                Icon(Icons.lock_outline, size: 100, color: Colors.white),

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
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25),

                //sigin in button
                MyButton(),

                //or continue with

                //google + kakao sign in button

                //not a member? sign up
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import "package:flutter/material.dart";

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Column(
            // logo
            children: [
              SizedBox(height: 50),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/liquerlogo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 50),

              //welcome

              Text(
                "주향이 가득한 곳 술솜입니다. \n어서오세요, 반갑습니다",
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 25),

              //username textfield
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white))),
              ),

              //password textfield

              //forgot password?

              //sigin in button

              //or continue with

              //google + kakao sign in button

              //not a member? sign up
            ],
          ),
        ),
      ),
    );
  }
}

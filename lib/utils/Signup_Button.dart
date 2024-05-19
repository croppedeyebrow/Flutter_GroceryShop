import 'package:flutter/material.dart';
import 'package:flutter_groceryshop/screen/LogIn_Screen.dart';
import 'package:flutter_groceryshop/widget/navbar_roots.dart';
import 'package:glassmorphism/glassmorphism.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      height: 50,
      width: 200,
      borderRadius: 20,
      blur: 15,
      alignment: Alignment.center,
      border: 2,
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xff4c53a5).withOpacity(0.3),
          Color(0xff4c53a5).withOpacity(0.05),
        ],
        stops: [
          0.1,
          1,
        ],
      ),
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xff4c53a5).withOpacity(0.3),
          Color(0xff4c53a5).withOpacity(0.11),
        ],
        stops: [
          0.1,
          1,
        ],
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LogInScreen()),
          );
        },
        child: Center(
          child: Text(
            "회원가입",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

import "package:clippy_flutter/arc.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_groceryshop/screen/LogIn_Screen.dart";
import "package:flutter_groceryshop/utils/colors.dart";
import "package:flutter_groceryshop/widget/AccountBottomBar.dart";
import "package:flutter_groceryshop/widget/SettingAppBar.dart";

class AccountScreen extends StatefulWidget {
  AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  int _selectedInkWell = 0;
  // 0 for male, 1 for female
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SettingAppBar(),
          Container(
              padding:
                  EdgeInsets.only(top: 28, right: 40, left: 40, bottom: 14),
              child: Text(
                "Account",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              )),
          Padding(
            padding: EdgeInsets.only(top: 40, right: 40, left: 40, bottom: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "Photo",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400]),
                    )
                  ],
                ),
                SizedBox(width: 60),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10)
                            ]),
                        child: Icon(
                          Icons.person_2_rounded,
                          size: 80,
                          color: const Color.fromARGB(255, 36, 19, 19),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextButton(
                        onPressed: () {
                          print("사진업로드");
                        },
                        child: Text(
                          "Upload Photo",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4c53a5)),
                        ))
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: EdgeInsets.only(right: 50, left: 50, bottom: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400]),
                    ),
                    SizedBox(width: 30),
                    Column(
                      children: [
                        Text(
                          "사용자 ID",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Container(
                          height: 1,
                          width: 160,
                          color: Colors.grey.withOpacity(0.5),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 50, left: 30, bottom: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Gender",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400]),
                    ),
                    SizedBox(width: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _selectedInkWell = 0;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: _selectedInkWell == 0
                                    ? Color(0xff4c53a5)
                                    : Color.fromARGB(255, 228, 213, 213),
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 10)
                                ]),
                            child: Icon(
                              Icons.male_rounded,
                              size: 20,
                              color: _selectedInkWell == 0
                                  ? Colors.white
                                  : Color.fromARGB(255, 88, 79, 79),
                            ),
                          ),
                        ),
                        SizedBox(width: 30),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _selectedInkWell = 1;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: _selectedInkWell == 1
                                    ? Color(0xff4c53a5)
                                    : Color.fromARGB(255, 228, 213, 213),
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 10)
                                ]),
                            child: Icon(
                              Icons.female_rounded,
                              size: 20,
                              color: _selectedInkWell == 1
                                  ? Colors.white
                                  : Color.fromARGB(255, 88, 79, 79),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 50, left: 50, bottom: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Age",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400]),
                    ),
                    SizedBox(width: 30),
                    Column(
                      children: [
                        Text(
                          "사용자 나이",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Container(
                          height: 1,
                          width: 160,
                          color: Colors.grey.withOpacity(0.5),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 50, left: 50, bottom: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400]),
                    ),
                    SizedBox(width: 30),
                    Column(
                      children: [
                        Text(
                          "123456@gmail.com",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Container(
                          height: 1,
                          width: 160,
                          color: Colors.grey.withOpacity(0.5),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    print("로그인");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogInScreen(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        gradient: primaryGradient,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Log In",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.login, color: Colors.white, size: 30)
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      gradient: primaryGradient,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.group_add_rounded,
                          color: Colors.white, size: 30)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

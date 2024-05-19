import "package:flutter/material.dart";
import "package:flutter_groceryshop/screen/LogIn_Screen.dart";
import "package:flutter_groceryshop/utils/Signup_Button.dart";

import "package:flutter_groceryshop/utils/Signup_TextFiled.dart";
import "package:flutter_groceryshop/utils/colors.dart";

import "package:glassmorphism/glassmorphism.dart";
import "package:intl/intl.dart";

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordcheckController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  DateTime? _selectedDate;
  int _selectedInkWell = 0;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // [primaryColors]
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromARGB(255, 255, 231, 209),
                Color.fromARGB(255, 167, 28, 192),
              ]),
        ),
        child: Center(
          child: Column(
            // logo
            children: [
              SizedBox(height: 32),

              SizedBox(height: 16),

              //welcome

              Text(
                "술솜의 가족이 되는 시간, \n2분만 집중해주세요",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 14),

              GlassmorphicFlexContainer(
                borderRadius: 20,
                blur: 15,
                alignment: Alignment.center,
                border: 2,
                linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFffffff).withOpacity(0.4),
                    Color(0xFFFFFFFF).withOpacity(0.25),
                  ],
                  stops: [
                    0.1,
                    1,
                  ],
                ),
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFffffff).withOpacity(0.5),
                    Color(0xFFFFFFFF).withOpacity(0.3),
                  ],
                  stops: [
                    0.1,
                    1,
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: Column(
                    children: [
                      //username textfield
                      SignupTextFiled(
                          controller: usernameController,
                          icon: Icon(Icons.person),
                          hintText: "아이디 입력하세요",
                          obscureText: false),

                      SizedBox(height: 4),

                      //password textfield
                      SignupTextFiled(
                          controller: passwordController,
                          icon: Icon(Icons.lock),
                          hintText: "비밀번호 입력하세요",
                          obscureText: true),

                      SizedBox(height: 4),

                      //check password
                      SignupTextFiled(
                          controller: passwordcheckController,
                          icon: Icon(Icons.lock),
                          hintText: "비밀번호 다시 한번 입력하세요",
                          obscureText: true),

                      SizedBox(height: 4),

                      //check password
                      SignupTextFiled(
                          controller: nameController,
                          icon: Icon(Icons.person),
                          hintText: "이름을 입력하세요",
                          obscureText: true),

                      SizedBox(height: 4),

                      SignupTextFiled(
                          controller: emailController,
                          icon: Icon(Icons.email_outlined),
                          hintText: "이메일 입력하세요",
                          obscureText: true),

                      SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () => _selectDate(context),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.grey[500],
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "생년월일 선택",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey[500]),
                                  ),
                                ],
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                            SizedBox(width: 14),
                            if (_selectedDate != null)
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                child: Column(
                                  children: [
                                    Text(
                                        "${DateFormat('yyyy-MM-dd').format(_selectedDate!)}",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white)),
                                    Container(
                                      height: 1,
                                      width: 100,
                                      color: Colors.grey[500],
                                    )
                                  ],
                                ),
                              )
                          ],
                        ),
                      ),
                      SizedBox(height: 4),
                      Padding(
                        padding:
                            EdgeInsets.only(right: 50, left: 30, bottom: 40),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                                : Color.fromARGB(
                                                    255, 228, 213, 213),
                                            borderRadius:
                                                BorderRadius.circular(60),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
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
                                                : Color.fromARGB(
                                                    255, 228, 213, 213),
                                            borderRadius:
                                                BorderRadius.circular(60),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
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
                      SizedBox(height: 14),

                      //signup button
                      SignupButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

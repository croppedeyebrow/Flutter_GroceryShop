import "package:clippy_flutter/arc.dart";
import "package:flutter/material.dart";
import "package:flutter_groceryshop/screen/Account_Screen.dart";
import "package:flutter_groceryshop/widget/SettingAppBar.dart";

class SettingScreen extends StatefulWidget {
  SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SettingAppBar(),
          Container(
              padding: EdgeInsets.all(24),
              child: Text(
                "Settings",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              )),
          Padding(
            padding: EdgeInsets.all(26),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "내 계정",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10)
                              ]),
                          child: Icon(
                            Icons.person_2_rounded,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("사용자 ID",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w200)),
                          SizedBox(height: 2),
                          Text(
                            "Personal Info",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey.withOpacity(0.5)),
                          )
                        ],
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AccountScreen(),
                              ));
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 212, 212, 212)
                                  .withOpacity(0.6),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10)
                              ]),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.only(left: 34, right: 34, bottom: 34),
            child: Text(
              "앱 설정",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          //언어 설정
          Padding(
            padding: EdgeInsets.only(left: 44, right: 44, bottom: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 225, 225)
                                .withOpacity(0.6),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 243, 231, 231)
                                          .withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10)
                            ]),
                        child: Icon(
                          Icons.language,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        Text(
                          "언어 설정",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: 80),
                        Text("한국어",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                                color: Colors.grey.withOpacity(0.5))),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 225, 225)
                                .withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 243, 231, 231)
                                          .withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10)
                            ]),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          //푸시 알림 설정
          Padding(
            padding: EdgeInsets.only(left: 44, right: 44, bottom: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 225, 225)
                                .withOpacity(0.6),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 243, 231, 231)
                                          .withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10)
                            ]),
                        child: Icon(
                          Icons.add_alert_sharp,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        Text(
                          "Push 알림 설정",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: 80),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 225, 225)
                                .withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 243, 231, 231)
                                          .withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10)
                            ]),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          //다크 모드 설정

          Padding(
            padding: EdgeInsets.only(left: 44, right: 44, bottom: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 225, 225)
                                .withOpacity(0.6),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 243, 231, 231)
                                          .withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10)
                            ]),
                        child: Icon(
                          Icons.mode_night_rounded,
                          color: Colors.purple[900],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        Text(
                          "다크 모드 설정",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: 60),
                        Text(_isChecked ? "on" : "off",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                                color: Color.fromARGB(255, 95, 85, 85)
                                    .withOpacity(0.8))),
                      ],
                    ),
                    Spacer(),
                    Transform.scale(
                      scale: 0.9, // Adjust this value to change the scale
                      child: Switch(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value;
                          });
                        },
                        activeColor: Colors.blue[100],
                        inactiveTrackColor: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          //문의하기
          Padding(
            padding: EdgeInsets.only(left: 44, right: 44, bottom: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 225, 225)
                                .withOpacity(0.6),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 243, 231, 231)
                                          .withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10)
                            ]),
                        child: Icon(
                          Icons.help_center,
                          color: Colors.pink[400],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        Text(
                          "문의하기",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: 80),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 225, 225)
                                .withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 243, 231, 231)
                                          .withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10)
                            ]),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          //디스플레이 설정
          Padding(
            padding: EdgeInsets.only(left: 44, right: 44, bottom: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 225, 225)
                                .withOpacity(0.6),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 243, 231, 231)
                                          .withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10)
                            ]),
                        child: Icon(
                          Icons.display_settings_outlined,
                          color: Colors.lightBlueAccent[200],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        Text(
                          "디스플레이 설정",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: 80),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 225, 225)
                                .withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 243, 231, 231)
                                          .withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10)
                            ]),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

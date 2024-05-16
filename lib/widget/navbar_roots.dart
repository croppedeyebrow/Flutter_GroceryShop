import "package:curved_navigation_bar/curved_navigation_bar.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_groceryshop/screen/Board_Screen.dart";
import "package:flutter_groceryshop/widget/BoardListScreen.dart";
import "package:flutter_groceryshop/screen/Like_Screen.dart";

import "package:flutter_groceryshop/screen/home_screen.dart";
import "package:flutter_groceryshop/screen/item_Screen.dart";

import "ChatList_Screen.dart";

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({Key? key}) : super(key: key);

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;

  final _screens = [
    HomeScreen(),
    ChatListScreen(),
    LikeScreen(),
    BoardScreen(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 70,
        color: Color(0xff4c53a5),
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(Icons.home_filled,
              size: 30,
              color: _selectedIndex == 0 ? Colors.amber : Colors.white),
          Icon(Icons.chat_bubble,
              size: 30,
              color: _selectedIndex == 1 ? Colors.amber : Colors.white),
          Icon(Icons.favorite,
              size: 30,
              color: _selectedIndex == 2 ? Colors.amber : Colors.white),
          Icon(Icons.border_all_rounded,
              size: 30,
              color: _selectedIndex == 3 ? Colors.amber : Colors.white),
          Icon(Icons.person,
              size: 30,
              color: _selectedIndex == 4 ? Colors.amber : Colors.white),
        ],
        index: _selectedIndex, // Set the initial selected index
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update the selected index
          });
        },
      ),
    );
  }
}

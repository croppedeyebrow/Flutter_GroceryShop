import "package:curved_navigation_bar/curved_navigation_bar.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_groceryshop/screen/chat_screen.dart";
import "package:flutter_groceryshop/screen/home_screen.dart";

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({Key? key}) : super(key: key);

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;

  final _screens = [
    HomeScreen(),
    ChatScreen(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 70,

        items: <Widget>[
          Icon(Icons.home_filled,
              size: 30,
              color: _selectedIndex == 0 ? Colors.amber : Colors.grey),
          Icon(Icons.chat_bubble,
              size: 30,
              color: _selectedIndex == 1 ? Colors.amber : Colors.grey),
          Icon(Icons.shopping_basket,
              size: 30,
              color: _selectedIndex == 2 ? Colors.amber : Colors.grey),
          Icon(Icons.border_all_rounded,
              size: 30,
              color: _selectedIndex == 3 ? Colors.amber : Colors.grey),
          Icon(Icons.settings,
              size: 30,
              color: _selectedIndex == 4 ? Colors.amber : Colors.grey),
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

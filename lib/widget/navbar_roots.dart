import "package:flutter/material.dart";
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
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff7165D6),
          unselectedItemColor: Colors.black38,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "홈"),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: "채팅"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), label: "장바구니"),
            BottomNavigationBarItem(
                icon: Icon(Icons.border_all_rounded), label: "게시판"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "설정"),
          ],
        ),
      ),
    );
  }
}

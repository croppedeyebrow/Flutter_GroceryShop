import "package:flutter/material.dart";

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_outlined,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: IconButton(
                icon: Icon(
                  Icons.more_vert,
                  size: 30,
                ),
                onPressed: () {}),
          )
        ],
      ),
    );
  }
}

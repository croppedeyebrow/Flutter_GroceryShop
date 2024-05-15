import "package:flutter/material.dart";
import "package:flutter_groceryshop/utils/Chat_Sample.dart";

class ChatRoomScreen extends StatelessWidget {
  final String send;
  final String messagename;
  final String messageimg;

  ChatRoomScreen({
    required this.send,
    required this.messagename,
    required this.messageimg,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Color(0xff4c53a5),
          leadingWidth: 30,
          title: Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage:
                      AssetImage("images/itemimages/${messageimg}"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  messagename,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 8, right: 20),
              child: Icon(
                Icons.phone_android,
                color: Colors.white,
                size: 28,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Icon(
                Icons.video_call_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
                size: 28,
              ),
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 80),
        itemBuilder: (context, index) => ChatSample(
          send: send,
        ),
      ),
      bottomSheet: Container(
        height: 84,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black54, spreadRadius: 2, blurRadius: 12)
        ]),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(Icons.add),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: IconButton(
                icon: Icon(
                  Icons.emoji_emotions_rounded,
                  color: Colors.purple,
                  size: 30,
                ),
                onPressed: () {
                  print("이모티콘호출");
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 1.8,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "상담하고 싶은 내용을 입력하세요", border: InputBorder.none),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send,
                color: Colors.purple,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}

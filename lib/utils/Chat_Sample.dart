import "package:custom_clippers/custom_clippers.dart";
import "package:flutter/material.dart";

class ChatSample extends StatelessWidget {
  final String send;

  ChatSample({
    required this.send,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.amber),
              child: Text(
                "전통주를 즐기는 동안 불편함이 있으셨나요? 언제든 문의하세요",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
        ),
        Container(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 80),
              child: ClipPath(
                  clipper: LowerNipMessageClipper(MessageType.send),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20, top: 10, bottom: 25, right: 20),
                    decoration: BoxDecoration(color: Color(0xff4c53a5)),
                    child: Text(
                      send,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )),
            )),
      ],
    );
  }
}

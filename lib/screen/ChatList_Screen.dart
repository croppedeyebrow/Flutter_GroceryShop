import "package:flutter/material.dart";
import "package:flutter_groceryshop/screen/chatRoom_screen.dart";

class ChatListScreen extends StatelessWidget {
  ChatListScreen({super.key});

  List imgs = ["15.png", "14.png", "11.png", "9.png", "6.png", "2.png"];

  List<String> symptoms = ["가정의학과", "이비인후과", "내과", "정형외과", "피부과", "산부인과"];
  List<String> chatname = [
    "농업회사법인 맑은내일",
    "금이산농원",
    "술샘 꿀샘",
    "술샘 미르 ",
    "맑은 내일",
    "댄싱사이더"
  ];

  List<String> message = [
    "선물해야 하는데, 이번주 내에 상품을 받아볼 수 있을까요?",
    "어떤 안주와 페어링했을 때 괜찮을까요??",
    "다른 상품도 추천해 주실 수 있나요????",
    "굉장히 맛이 깔끔했어요, 다음에 또 시킬게요!",
    "언제쯤 도착하는 걸까요, 주문한지 2주가 넘었어요",
    "보관 방법은 어떻게 해야 할까요??"
  ];
  List<String> sentime = ["12:30", "09:30", "08:30", "07:30", "06:30", "05:30"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              children: [
                Text("제조명인 상담실",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 2,
                ),
                Icon(Icons.chat_outlined, color: Color(0xff4c53a5), size: 30),
                Spacer(),
                Icon(Icons.more_vert_outlined,
                    color: Color(0xff4c53a5), size: 30)
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 2)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Search", border: InputBorder.none),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Color(0xff4c53a5),
                    )
                  ],
                )),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Text(
              "상담중인 채널",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 12,
                              spreadRadius: 2)
                        ]),
                    child: Stack(
                      textDirection: TextDirection.rtl,
                      children: [
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChatRoomScreen(
                                      send: message[index],
                                      messagename: chatname[index],
                                      messageimg: imgs[index],
                                    ),
                                  ));
                            },
                            child: Container(
                              width: 62,
                              height: 62,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "images/itemimages/${imgs[index]}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(2),
                          padding: EdgeInsets.all(4),
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(height: 24),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 12, spreadRadius: 2)
                ]),
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatRoomScreen(
                                send: message[index],
                                messagename: chatname[index],
                                messageimg: imgs[index],
                              ),
                            ));
                      },
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 12,
                                  spreadRadius: 2)
                            ]),
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage:
                              AssetImage("images/itemimages/${imgs[index]}"),
                        ),
                      ),
                      title: Text(chatname[index],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      subtitle: Text(
                        message[index],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Text(
                        sentime[index],
                        style: TextStyle(fontSize: 14, color: Colors.black26),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

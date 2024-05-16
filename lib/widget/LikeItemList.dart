import "package:flutter/material.dart";

class LikeItemList extends StatefulWidget {
  LikeItemList({super.key});

  @override
  State<LikeItemList> createState() => _LikeItemListState();
}

class _LikeItemListState extends State<LikeItemList> {
  List<String> itemimg = [
    "3.png",
    "7.png",
    "11.png",
    "12.png",
    "15.png",
    "1.png",
    "9.png",
  ];

  List<String> itemname = [
    "참주가 블루킹 선물세트 30도 500ml 100ml잔1 블루베리 증류주",
    "경복궁소주 40도 350ml 전통 상압증류식소주",
    "술샘 꿀샘16 벌꿀주 375ml 16도",
    "술샘 붉은원숭이 막걸리 10.8도 375ml",
    "맑은내일 미니어처 선물세트 190ml 5본",
    "댄싱사이더 댄싱파파 6도 330ml 사과 사이더",
    "술샘 미르 54도 345ml"
  ];

  List<String> itemprice = [
    "35,500",
    "28,400",
    "11,400",
    "8,550",
    "24,300",
    "5,600",
    "33,250"
  ];

  List<bool> groupValue = List<bool>.filled(7, false);
  List<int> counter = List<int>.filled(7, 1);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextButton(
              onPressed: () {
                setState(() {
                  for (int i = 0; i < 5; i++) {
                    groupValue[i] = !groupValue[i];
                  }
                });
              },
              child: Text(
                "Sellect All",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
          for (int i = 0; i < 7; i++)
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Checkbox(
                      value: groupValue[i],
                      activeColor: Color(0xff4c53a5),
                      onChanged: (bool? value) {
                        if (value != null) {
                          setState(() {
                            groupValue[i] = value;
                          });
                        }
                      },
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      margin: EdgeInsets.only(right: 20),
                      child: Image.asset("images/itemimages/${itemimg[i]}"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${itemname[i].length > 6 ? itemname[i].substring(0, 6) + '...' : itemname[i]}",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4c5ea5),
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            "\₩${itemprice[i]}",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (counter[i] > 0) counter[i]--;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 10)
                                      ]),
                                  child: Icon(
                                    Icons.remove_outlined,
                                    size: 18,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "${counter[i]}",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff4c5ea5)),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    counter[i]++;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 10)
                                      ]),
                                  child: Icon(
                                    Icons.add_outlined,
                                    size: 18,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )),
        ],
      ),
    );
  }
}

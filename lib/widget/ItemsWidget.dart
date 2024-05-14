import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_groceryshop/screen/item_Screen.dart";

class ItemsWidget extends StatefulWidget {
  @override
  State<ItemsWidget> createState() => _ItemsWidgetState();
}

class _ItemsWidgetState extends State<ItemsWidget> {
// _isFavorited라는 이름의 불리언 타입 리스트를 선언하고, 초기에는 빈 리스트로 설정합니다.
  List<bool> _isFavorited = [];

// initState 메서드는 위젯이 생성될 때 한 번만 호출됩니다.
// 이 메서드에서 _isFavorited 리스트를 초기화합니다.

  @override
  void initState() {
    // super.initState()는 상위 클래스의 initState 메서드를 호출합니다.
    // 이는 Flutter 프레임워크에서 요구하는 규칙입니다.
    super.initState();

    // _isFavorited 리스트를 생성합니다. 리스트의 길이는 itemlist의 길이와 같습니다.
    // 각 항목은 false로 초기화됩니다. 즉, 처음에는 모든 아이템이 "즐겨찾기"되지 않은 상태입니다.
    _isFavorited = List.generate(itemlist.length, (index) => false);
  }

  List<String> itemlist = [
    "6.png",
    "7.png",
    "8.png",
    "9.png",
    "10.png",
    "11.png",
    "12.png",
    "13.png",
    "14.png",
    "15.png",
  ];

  List<String> namelist = [
    "댄싱사이더 댄싱파파 6도 330ml ",
    "경복궁소주 40도 350ml",
    "더한 명랑스컬 17도 375ml",
    "술샘 미르 54도 375ml",
    "술샘 퍼플진 오미자 과실 진 36.5도 500ml",
    "술샘 꿀샘16 벌꿀주 16도 375ml",
    "술샘 붉은원숭이 막걸리 10.8도 375ml",
    "달홀주조 달홀진주 40도 375ml",
    "금이산농원 복숭아 와인 12도 750ml",
    "맑은내일 미니어처 선물세트 190ml 5본"
  ];

  List<double> itemoriginalprice = [
    13000,
    12000,
    11500,
    10000,
    9400,
    8900,
    7800,
    6500,
    4900,
    4000
  ];

  double discountRate = 0.45;

  double getDiscountedPrice(int index) {
    return itemoriginalprice[index] * (1 - discountRate);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.7,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < 10; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "-45%",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        _isFavorited[i]
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.redAccent,
                      ),
                      onPressed: () {
                        setState(() {
                          _isFavorited[i] = !_isFavorited[i];
                        });
                      },
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemScreen(
                            itemimg: itemlist[i],
                            itemname: namelist[i],
                            //   itemprice : getDiscountedPrice(i).toInt(
                          ),
                        ));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/itemimages/${itemlist[i]}",
                      height: 90,
                      width: 90,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  alignment: Alignment.center,
                  child: Text(
                    "${namelist[i]}",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4c53a5)),
                  ),
                ),
                Container(
                  height: 1,
                  color: Colors.black.withOpacity(0.3), // Or any other color.
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "₩ ${itemoriginalprice[i]}",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Text(
                        "₩ ${getDiscountedPrice(i).toInt()} ",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4c53a5)),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xff4c53a5),
                        size: 16,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}

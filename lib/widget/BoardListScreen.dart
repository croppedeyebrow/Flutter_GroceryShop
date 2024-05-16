import 'package:flutter/material.dart';
import 'package:flutter_groceryshop/widget/BoardAppBar.dart';

class BoardList extends StatelessWidget {
  final List<Map<String, dynamic>> boardList = [
    {
      'title': '제목 1',
      'author': '작성자 1',
      'date': '2023-05-16',
      'views': 100,
    },
    {
      'title': '제목 2',
      'author': '작성자 2',
      'date': '2023-05-15',
      'views': 50,
    },
    {
      'title': '제목 3',
      'author': '작성자 3',
      'date': '2023-05-14',
      'views': 200,
    },
    // 더 많은 데이터를 추가할 수 있습니다.
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 14),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: boardList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      boardList[index]['title'] ?? '',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Text(boardList[index]['author'] ?? ''),
                        SizedBox(width: 8),
                        Text(boardList[index]['date'] ?? ''),
                        SizedBox(width: 8),
                        Text('조회수: ${boardList[index]['views'] ?? 0}'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

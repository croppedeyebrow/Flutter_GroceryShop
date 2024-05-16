import 'package:flutter/material.dart';
import 'package:flutter_groceryshop/widget/BoardAppBar.dart';
import 'package:flutter_groceryshop/widget/BoardPost.dart';

class BoardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 탭 개수 (인기, 최근, 베스트)
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff4c53a5),
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Row(
            children: [
              Text(
                '술솜 토론방',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4c53a5)),
              ),
              SizedBox(width: 4),
              Icon(Icons.table_bar_rounded, color: Color(0xff4c53a5), size: 30),
              Spacer(),
              Icon(
                Icons.more_vert,
                size: 30,
                color: Color(0xff4c53a5),
              ),
            ],
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: '인기게시글'),
              Tab(text: '최근게시글'),
              Tab(text: '베스트게시글'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _hotBoardList(context), // 인기게시글 리스트
            _newBoardList(context), // 최근게시글 리스트
            _bestBoardList(context), // 베스트게시글 리스트
          ],
        ),
      ),
    );
  }

//인기게시글 데이터
  Widget _hotBoardList(BuildContext context) {
    List<Map<String, dynamic>> boardList = List.generate(10, (index) {
      return {
        'title': '인기 게시글 $index',
        'author': 'Hot Id $index',
      };
    });

    return SingleChildScrollView(
      child: Column(
        children: boardList.map((board) {
          return Padding(
            padding: EdgeInsets.only(top: 14),
            child: Card(
              child: ListTile(
                title: Text(
                  board['title'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Text(board['author']),
                    SizedBox(width: 8),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BoardPost(post: board),
                    ),
                  );
                },
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  // 최근게시글 데이터
  Widget _newBoardList(BuildContext context) {
    List<Map<String, dynamic>> boardList = List.generate(10, (index) {
      return {
        'title': '최근 게시글 $index',
        'author': 'New Id $index',
      };
    });

    return SingleChildScrollView(
      child: Column(
        children: boardList.map((board) {
          return Padding(
            padding: EdgeInsets.only(top: 14),
            child: Card(
              child: ListTile(
                title: Text(
                  board['title'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Text(board['author']),
                    SizedBox(width: 8),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BoardPost(post: board),
                    ),
                  );
                },
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  // 베스트게시글 데이터

  Widget _bestBoardList(BuildContext context) {
    List<Map<String, dynamic>> boardList = List.generate(10, (index) {
      return {
        'title': '베스트 게시글 $index',
        'author': 'Best Id $index',
      };
    });

    return SingleChildScrollView(
      child: Column(
        children: boardList.map((board) {
          return Padding(
            padding: EdgeInsets.only(top: 14),
            child: Card(
              child: ListTile(
                title: Text(
                  board['title'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Text(board['author']),
                    SizedBox(width: 8),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BoardPost(post: board),
                    ),
                  );
                },
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

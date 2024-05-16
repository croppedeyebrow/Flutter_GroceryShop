import "package:flutter/material.dart";

class BoardPost extends StatelessWidget {
  final Map<String, dynamic> post;

  BoardPost({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text(
          '게시글',
          style: TextStyle(
              color: Color(0xff4c53a5),
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post['title'] ?? '',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text('작성자: ${post['author'] ?? ''}'),
                SizedBox(width: 16),
                // 추가적인 정보를 여기에 추가할 수 있습니다.
              ],
            ),
            SizedBox(height: 16),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  '게시글 내용이 여기에 표시됩니다.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

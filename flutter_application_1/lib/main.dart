import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( title: Text('App')),
        //그냥 중앙정렬은 body 다음 center로 감싸면되는데 그 외 위치로 정렬하려면 align + alignment 사용
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            // width height 꽉차게 주려면 double.infinity
            width: 100, height: 100,
            //바깥 여백: 마진
            margin: EdgeInsets.all(20),
            //마진 부분별로 주는 법: EdgeInsets.fromLTRB(left, top, right, bottom)
            //margin: EdgeInsets.fromLTRB(30, 0, 0, 30) 이런식으로
            // 내부 여백: 패딩
            padding: EdgeInsets.all(20),
            child: Text('패딩 적용'),
            //나머지 박스 스타일들은 decoration안에 넣어야함
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black)
            ),
          ),
        )
      )
    );
  }
}


class MyHomework extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("App")),
        body: Icon(Icons.star),
        bottomNavigationBar: BottomAppBar(
          // Row에는 Height등의 높이 조절을 해 줄 수 없고
          // 그래서 Container로 Wrapping해야함, 옆에 전구 클릭해서 Wrap 가능
          // Container 대신 Sized box 사용 가능, container보다 가벼움
          // width, height, child만 필요한 박스는 sized box 사용 권장
          child: SizedBox(
            height: 100,
            child: Row(
                // 밑에 alignment로 간격 조절
                // row안에 children 만들어서 여러개 위젯 넣기기
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.contact_page),
                ]),
          ),
        ),
      ),
    );
  }
}

class MyFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: InkWell(
        child: Text("시스템 알림"),
      )),
      body: Center(
        child: Column(
          children: [
            Text("Hello"),
            Text("Hello"),
            Text("Hello"),
          ],
        ),
      ),
    );
  }
}

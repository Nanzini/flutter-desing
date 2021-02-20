import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'YOUNGMIN', home: Grade());
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appbar design
        appBar: AppBar(
          title: Text('YOUNGMIN'), // 디바이스 위에 그려진ㄴ건 text클래스 써야함
          backgroundColor: Colors.amber[200],
          centerTitle: true,
          elevation: 0.0, // 앱바 밑부분의 테두리 높이로 이ㅣㄴ한 그림자없애줌 z축 0으로
        ),

        // body design
        backgroundColor: Colors.amber[300],
        body: Padding(
          // body속성 내 패딩모두 적용할꺼니까 감싸줌
          padding: EdgeInsets.fromLTRB(30, 40, 0, 0), // 적용할땐 엣지인셋으로!

          // column으로 하나의 자식ㄱ을 가지며 column은 다수의 자식을 가짐
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 기준으로 딱 맞ㄱ 정렬
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/me.jpg'),
                  radius: 60,
                  backgroundColor: Colors.amber[300],
                ),
              ), // ctrl space로 속성확인
              // children:<widget>[] 국룰
              // text style주기
              Divider(
                height: 60,
                color: Colors.grey,
                endIndent: 30, // 작대기 끝나는 거
              ),
              Text(
                'NAME',
                style: TextStyle(
                    // 컨트롤 누르고 textstyle에 마우스 올려봐
                    color: Colors.white,
                    letterSpacing: 2.0),
              ),
              // SizedBox(height: 10), 간격봐봐
              Text('YOUNGMIN',
                  style: TextStyle(
                      // 컨트롤 누르고 textstyle에 마우스 올려봐
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),

              // SizedBox(height: 10),
              Text(
                'YOUNGMIN POWER LEVEL',
                style: TextStyle(
                    // 컨트롤 누르고 textstyle에 마우스 올려봐
                    color: Colors.white,
                    letterSpacing: 2.0),
              ),
              // SizedBox(height: 10),
              Text('26',
                  style: TextStyle(
                      // 컨트롤 누르고 textstyle에 마우스 올려봐
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),

              SizedBox(height: 10),
              Row(children: <Widget>[
                Icon(Icons.menu_book),
                SizedBox(width: 20),
                Text(
                  '책 읽기',
                  style: TextStyle(
                      color: Colors.black87,
                      letterSpacing: 2.0,
                      fontSize: 16.0),
                )
              ]),

              SizedBox(height: 10),
              Row(children: <Widget>[
                Icon(Icons.check_circle_outline_outlined),
                SizedBox(width: 20),
                Text(
                  'Flutter 공부',
                  style: TextStyle(
                      color: Colors.black87,
                      letterSpacing: 2.0,
                      fontSize: 16.0),
                )
              ]),

              SizedBox(height: 10),
              Row(children: <Widget>[
                Icon(Icons.check_circle_outline_outlined),
                SizedBox(width: 20),
                Text(
                  '빨래',
                  style: TextStyle(
                      color: Colors.black87,
                      letterSpacing: 2.0,
                      fontSize: 16.0),
                )
              ]),

              SizedBox(height: 10),
              Row(children: <Widget>[
                Icon(Icons.radio_button_unchecked_outlined),
                SizedBox(width: 20),
                Text(
                  'PPT연습',
                  style: TextStyle(
                      color: Colors.black87,
                      letterSpacing: 2.0,
                      fontSize: 16.0),
                )
              ]),

              SizedBox(height: 30),
              Center(
                child: CircleAvatar(
                    backgroundImage: AssetImage('assets/또가스.jpg'),
                    backgroundColor: Colors.amber[200],
                    radius: 30),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('YOUNGMIN')),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
        // list안에 드로워헤더 릿므트목록들 다 들어감
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text('caca4616@naver.com'),
            accountName: Text('youngmin'),
            onDetailsPressed: () {
              print('detail menu clicked');
            },
            decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.grey),
            title: Text('home'),
            onTap: () {
              print('home clicked');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.grey),
            title: Text('settings'),
            onTap: () {
              print('st clicked');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(Icons.question_answer_outlined, color: Colors.grey),
            title: Text('QNA'),
            onTap: () {
              print('QNA clicked');
            },
            trailing: Icon(Icons.add),
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new AddCustomer(),
    );
  }
}

class AddCustomer extends StatefulWidget {
  //MyHomePage({Key key}) : super(key: key);
  @override
  _AddcustomerState createState() => new _AddcustomerState();
}

class _AddcustomerState extends State<AddCustomer> {
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('스마트비서 로고'),
        foregroundColor: Color(3707764736),
        centerTitle: true,
        actions: [
          Icon(Icons.home),
        ],
        backgroundColor: Color(0xFFfafafa),
      ),
      body: Container(

        child: Column(children: <Widget>[
          Container(
              child: Text(
            "고객정보등록",
            style: const TextStyle(
                fontSize: 33.0,
                letterSpacing: 4.0,
                color: const Color(0xFF000000),
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto"),
          )),
          SizedBox(height: 30.0),
          Container(
              child: TextField(
                  decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: '이름',
          ))),
          SizedBox(height: 30.0),
          Container(
              child: TextField(
                  decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: '여기에 입력하세요',
          ))),
          SizedBox(height: 30.0),
          Container(
              child: TextField(
                  decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: '여기에 입력하세요',
          ))),
          SizedBox(height: 30.0),
          Container(
              child: TextField(
                  decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: '여기에 입력하세요',
          ))),
          Container(
              child: RaisedButton(
                  child: Text('등록 완료'), color: Colors.orange, onPressed: () {}))
        ]),
      ),
      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(
          icon: const Icon(Icons.event),
          title: new Text('캘린더'),
        ),
        new BottomNavigationBarItem(
          icon: const Icon(Icons.format_list_bulleted),
          title: new Text('고객관리'),
        ),
        new BottomNavigationBarItem(
          icon: const Icon(Icons.brightness_5),
          title: new Text('설정'),
        )
      ]),
    );
  }

  void fabPressed() {}
}

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
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('스마트비1서1 로고'),
        foregroundColor: Color(3707764736),
        centerTitle: true,
        actions: [
          Icon(Icons.home),
        ],
        backgroundColor: Color(0xFFfafafa),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
                child: DropdownButton(
              items: const [],
            )),
            Container(
                child: DropdownButton(
              items: const [],
            )),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    onChanged: (value) {},
                    controller: editingController,
                    decoration: InputDecoration(
                      labelText: "Search",
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0))),
                    ))),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('김명채바보'),
                    subtitle: Text('25 / 몬생김ㅋ'),
                  ),
                  ButtonTheme(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('수정'),
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.person_add), onPressed: fabPressed),
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

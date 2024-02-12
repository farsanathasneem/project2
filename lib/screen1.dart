import 'package:flutter/material.dart';
import 'package:projectone/screen2.dart';
// import '/view/second_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainScreen();
  }
}

class MainScreen extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(title: new Text("Title")),
            body: new Center(
                child: ElevatedButton(
                    child: new Text("Second page"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SecondPage()));
                    }))));
  }
}

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new SecondPageState();
  }
}


class SecondPageState extends State<SecondPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Title"),
      ),
      body: new Center(
        child: new Text("Some text"),
      ),
    );
  }
}
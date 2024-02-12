import 'package:flutter/material.dart';
import 'package:projectone/login.dart';
// import 'package:new_project/instalogin.dart';
// import 'package:new_project/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InstaHome extends StatefulWidget {
  const InstaHome({super.key});

  @override
  State<InstaHome> createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("homepage"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              final _sharedpref = await SharedPreferences.getInstance();
              await _sharedpref.clear();
              Navigator.of(context).pushReplacement(
                   MaterialPageRoute(builder: (context) => Instalogin())
                  );
            },
            child: Text("logout")),
      ),
    );
  }
}

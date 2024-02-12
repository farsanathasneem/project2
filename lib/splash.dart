import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projectone/home.dart';
import 'package:projectone/login.dart';
import 'package:projectone/main.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Instasplsh extends StatefulWidget {
  const Instasplsh({super.key});

  @override
  State<Instasplsh> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Instasplsh> {
  void splashMethod() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (cxt) => Instalogin()));
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashMethod();

    checkUserLoggin();
  }

  // shared pref
  Future<void> checkUserLoggin() async {
    final sharedprefe = await SharedPreferences.getInstance();
    final preference = sharedprefe.getBool(sharedPreferenceKey);
    if (preference == null || preference == false) {
      // login
      Instalogin();
    } else {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (cxt) => InstaHome()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Image.network(
          "https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/vrfzeybinqfi4g9lqgj6.png",
          height: 400,
          width: 400,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Lineargrad extends StatelessWidget {
  const Lineargrad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                tileMode: TileMode.mirror,
              begin: Alignment(0.4,1),
              end: Alignment.bottomRight,
              colors: [
              Colors.pinkAccent,
              Colors.deepPurple,
              Colors.blueAccent,
              Colors.deepPurple,
              Colors.pinkAccent,
            ],
          )),
        ),
      ),
    );
  }
}

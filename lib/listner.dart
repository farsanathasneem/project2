import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  // value list
  // int _counter = 0;

  ValueNotifier<int> counter = ValueNotifier(0);

  CounterApp({
    super.key,
  });

  void counterIncrement() {
    counter.value = counter.value + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: counter,
          builder: (context, int newValue, Widget? child) {
            return Text(
              newValue.toString(),
              style: const TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterIncrement,
        child: const Icon(Icons.add),
      ),
    );
  }
}

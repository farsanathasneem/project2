// import 'package:flutter/material.dart';

// class Stepper1 extends StatefulWidget {
//   const Stepper1(int i, {super.key, });

//   @override
//   State<Stepper1> createState() => _Stepper1State();
// }

// class _Stepper1State extends State<Stepper1> {
//   int _currentStep = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("stepper"),
//       ),
//       body: Center(
//           child: Stepper(
//             currentStep = _currentStep,
//             onStepTapped: (int newIndex) {
//                 setState(() {
//                   _currentStep = newIndex;
//                 });
//               },
              
//               onStepContinue: () {
//                 if (_currentStep != 2) {
//                   setState(() {
//                     _currentStep += 1;
//                   });
//                 }

//               },
//               onStepCancel:(){
//                if (_currentStep != 0) {
//                   setState(() {
//                     _currentStep += 1;
//                   });
//                 }
//               },
//               steps: [
//             Step(
//                 isActive: _currentStep == 0,
//                 title: Text("step1"),
//                 content: Text("content of step1")),
//             Step(
//                 isActive: _currentStep == 1,
//                 title: Text("step1"),
//                 content: Text("content of step1")),
//             Step(
//                 isActive: _currentStep == 2,
//                 title: Text("step1"),
//                 content: Text("content of step1"))
//           ],
              
//               )),
//     );
//   }
// }

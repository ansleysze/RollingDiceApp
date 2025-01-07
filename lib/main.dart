import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
         body:GradientContainer( Color.fromARGB(255, 0, 11, 56), Color.fromARGB(255, 1, 31, 150)) ,
      ),
    );
  }
}



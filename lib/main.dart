import 'package:clean_architecture/view/HomeWorks/calculator.dart';
import 'package:clean_architecture/view/LiveCourse/GridVew.dart';
import 'package:clean_architecture/view/LiveCourse/textformfiled_test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Calculator(),
    );
  }
}

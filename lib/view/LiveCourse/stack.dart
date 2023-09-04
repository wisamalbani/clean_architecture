import 'package:flutter/material.dart';

class StackTest extends StatelessWidget {
  const StackTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 400,
          height: 500,
          color: Colors.black,
          child: Stack(
            /// لمنع قص جزء من الودجت في حال تجاوز قياس الشاشة او حدود ودجت اخر
            clipBehavior: Clip.none,
            children: [
              Positioned(
                right: -30,
                child: Container(width: 200, height: 300, color: Colors.red),
              ),
              Container(width: 100, height: 150, color: Colors.green),
              Container(width: 50, height: 75, color: Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}

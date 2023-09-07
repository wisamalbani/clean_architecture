import 'package:flutter/material.dart';

class Azrar extends StatefulWidget {
  const Azrar({super.key});

  @override
  State<Azrar> createState() => _AzrarState();
}

class _AzrarState extends State<Azrar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Button"),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.abc),
                label: const Text("icon button"),
              ),
              MaterialButton(
                onPressed: () {},
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.abc),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/images/cookies.png",
                  height: 130,
                  width: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

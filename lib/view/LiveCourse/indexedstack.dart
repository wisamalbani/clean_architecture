import 'package:flutter/material.dart';

class IndexedStackTest extends StatefulWidget {
  const IndexedStackTest({super.key});

  @override
  State<IndexedStackTest> createState() => _IndexedStackTestState();
}

class _IndexedStackTestState extends State<IndexedStackTest> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          currentindex = 0;
                        },
                      );
                    },
                    child: Text("Widget 1"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          currentindex = 1;
                        },
                      );
                    },
                    child: Text("Widget 2"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          currentindex = 2;
                        },
                      );
                    },
                    child: Text("Widget 13"),
                  ),
                ],
              ),
              IndexedStack(
                index: currentindex,
                children: [
                  Container(
                    color: Colors.red,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.green,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}

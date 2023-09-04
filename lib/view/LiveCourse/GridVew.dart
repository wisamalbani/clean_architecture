import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List mobile = [
    {
      "name" : "S20 ultra",
      "screen" : "6.2",
      "cpu" :"8 core"
    },
    {
      "name" : "S10 ultra",
      "screen" : "6.2",
      "cpu" :"8 core"
    },
    {
      "name" : "S8 ",
      "screen" : "6.2",
      "cpu" :"8 core"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          child:  GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10
            ),
            children: [
              Container(
                child: Text("container1"),
                height: 60,
                color: Colors.red,
              ),
              Container(
                child: Text("container1"),
                height: 60,
                color: Colors.blue,
              ),
              Container(
                child: Text("container1"),
                height: 60,
                color: Colors.green,
              ),
              Container(
                child: Text("container1"),
                height: 60,
                color: Colors.green,
              )
            ],
          ),
        )

    );
  }
}
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        // width: 130,
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child:ListView(
            scrollDirection: Axis.vertical,
            reverse: true,//scroll start from down
            physics: BouncingScrollPhysics(),//kind of scroll
            //physics: NeverScrollableScrollPhysics(),//kind of scroll

            children: [
              Container(
                height: 150,
                width: 80,
                color: Colors.green,
              ),
              Container(
                height: 150,
                width: 80,
                color: Colors.red,
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Text("data"),
                  Container(
                    height: 150,
                    width: 80,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 150,
                    width: 80,
                    color: Colors.amber,
                  ),
                ],
              ),

            ],
          )
      ),

    );
  }
}
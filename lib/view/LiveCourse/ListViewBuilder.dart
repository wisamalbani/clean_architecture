import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constant/list_menu.dart';

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
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: ListView.builder(
            itemCount: mobile.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text("${mobile[i]['name']}"),
                subtitle: Text("${mobile[i]['screen']}"),
                trailing: Text("${mobile[i]['cpu']}"),
              );
            },
          )),
    );
  }
}

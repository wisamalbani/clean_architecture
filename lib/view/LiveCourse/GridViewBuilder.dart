// ignore_for_file: unused_import, unnecessary_import, file_names

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
      drawer: const Drawer(),
      body: Container(
          // width: 130,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mobile.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 30,
                childAspectRatio: 20,
              ), //كروس تأخذ الاكسس من سكرول
              itemBuilder: (context, i) {
                return ListTile(
                  tileColor: Colors.red,
                  title: Text("${mobile[i]['name']}"),
                  subtitle: Text("${mobile[i]['screen']}"),
                  trailing: Text("${mobile[i]['cpu']}"),
                );
              })),
    );
  }
}

import 'package:flutter/material.dart';

class hw28082023 extends StatefulWidget {
  const hw28082023({super.key});

  @override
  State<hw28082023> createState() => _hw28082023State();
}

class _hw28082023State extends State<hw28082023> {
  var text1 = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Icon & Text
              Container(
                margin: EdgeInsets.all(30),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, size: 40),
                    Text(
                      "Lagerort",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(width: 40),
                  ],
                ),
              ),
              ////

              ////White Container + DropDpwnButtons
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Myddb1(),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Myddb2(),
                      ],
                    ),
                  ],
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width,
                height: 600,
              ),
              ////
            ],
          ),
        ),
      ),
    );
  }
}

//// First DropDownButton
class Myddb1 extends StatefulWidget {
  const Myddb1({super.key});

  @override
  State<Myddb1> createState() => _Myddb1State();
}

class _Myddb1State extends State<Myddb1> {
  var text1 = null;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(25),
      ),
      width: 325,
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          alignment: AlignmentDirectional.centerStart,
          padding: EdgeInsets.all(10),
          icon: const Icon(Icons.keyboard_arrow_down),
          isExpanded: true,
          hint: const Text(
            "Zone",
            style: TextStyle(fontSize: 20),
          ),
          dropdownColor: Colors.grey[100],
          value: text1,
          items: ["USA", "KSA", "SYR"]
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text("$e"),
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(
              () {
                text1 = "$value";
              },
            );
          },
        ),
      ),
    );
  }
}

//// Second DropDownButton
class Myddb2 extends StatefulWidget {
  const Myddb2({super.key});

  @override
  State<Myddb2> createState() => _Myddb2State();
}

class _Myddb2State extends State<Myddb2> {
  var text2 = null;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(25),
      ),
      width: 325,
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          // style: TextStyle(fontWeight: FontWeight.w500),
          padding: EdgeInsets.all(10),
          icon: const Icon(Icons.keyboard_arrow_down),
          isExpanded: true,
          hint: const Text(
            "Flache",
            style: TextStyle(fontSize: 20),
          ),
          dropdownColor: Colors.grey[100],
          value: text2,
          items: ["G", "H", "I", "J", "K"]
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text("$e"),
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(
              () {
                text2 = "$value";
              },
            );
          },
        ),
      ),
    );
  }
}

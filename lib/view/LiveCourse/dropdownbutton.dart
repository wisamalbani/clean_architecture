import 'package:flutter/material.dart';

class DrDwBtn extends StatefulWidget {
  DrDwBtn({super.key});

  @override
  State<DrDwBtn> createState() => _DrDwBtnState();
}

class _DrDwBtnState extends State<DrDwBtn> {
  var text1 = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  child: DropdownButton(
                    hint: Text("Select Country"),
                    isExpanded: true,
                    dropdownColor: Colors.amber,
                    value: text1,
                    items: ["USA", "KSA", "SYR"]
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text("country $e"),
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
                Container(
                  child: DropdownButton(
                    items: []
                        .map(
                          (e) => DropdownMenuItem(
                            child: Text("$e"),
                            value: e,
                          ),
                        )
                        .toList(),
                    hint: Text("Select Fruit"),
                    value: text1,
                    isExpanded: true,
                    dropdownColor: Colors.green,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

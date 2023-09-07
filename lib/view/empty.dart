// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/constant/list_menu.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //// Text Form Field
            SizedBox(
              // height: 200,
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 35, 35, 35),
                ),
                maxLength: 20,
                maxLines: 1,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                autofocus: true,
                cursorColor: Colors.white,
                controller: textEditingController,
                cursorHeight: 25,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 25,
                ),
              ),
            ),
            //// Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.blue,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  height: 375,
                  width: 300,
                  child: GridView.builder(
                    itemCount: hasbeh.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.25,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 3,
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (context, i) {
                      return ElevatedButton(
                        onPressed: () {
                          setState(
                            () {},
                          );
                        },
                        child: ListTile(
                          title: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              "${hasbeh[i]["sym"]}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

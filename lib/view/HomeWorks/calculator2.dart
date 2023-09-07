import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/constant/list_menu.dart';
import '../../core/function/calculator2.dart';

class Calculator2 extends StatefulWidget {
  const Calculator2({super.key});

  @override
  State<Calculator2> createState() => _Calculator2State();
}

class _Calculator2State extends State<Calculator2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      body: SafeArea(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //// Text Form Field
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 35, 35, 35),
                    ),
                    maxLength: 15,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 325,
                      width: 310,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.all(1.5),
                                height: autohightwidth,
                                width: autohightwidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue[500],
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        textEditingController.text = "+";
                                      },
                                    );
                                  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                height: autohightwidth,
                                width: autohightwidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue[500],
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        textEditingController.text = "-";
                                      },
                                    );
                                  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                height: autohightwidth,
                                width: autohightwidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue[500],
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        textEditingController.text = "*";
                                      },
                                    );
                                  },
                                  child: Text(
                                    "×",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.all(1.5),
                                height: autohightwidth,
                                width: autohightwidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue[500],
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        textEditingController.text = "÷";
                                      },
                                    );
                                  },
                                  child: Text(
                                    "÷",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                height: autohightwidth,
                                width: autohightwidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue[500],
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        textEditingController.text = "%";
                                      },
                                    );
                                  },
                                  child: Text(
                                    "%",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                height: autohightwidth,
                                width: autohightwidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue[500],
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        textEditingController.clear();
                                      },
                                    );
                                  },
                                  child: Text(
                                    "AC",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.all(1.5),
                                height: autohightwidth,
                                width: autohightwidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue[500],
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(
                                      () {},
                                    );
                                  },
                                  child: Text(
                                    "±",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                height: autohightwidth,
                                width: 201,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue[500],
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(
                                      () {},
                                    );
                                  },
                                  child: Text(
                                    "=",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                //// Numbers
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 245,
                      width: 303,
                      child: GridView.builder(
                        itemCount: hasbeh2.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1.25,
                          crossAxisSpacing: 3,
                          mainAxisSpacing: 3,
                          crossAxisCount: 3,
                        ),
                        itemBuilder: (context, i) {
                          return ElevatedButton(
                            onPressed: () {
                              setState(
                                () {
                                  textEditingController.text =
                                      textEditingController.text +
                                          "${hasbeh2[i]["sym"]}";
                                },
                              );
                            },
                            child: ListTile(
                              title: Center(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "${hasbeh2[i]["sym"]}",
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
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(1.5),
                  height: autohightwidth,
                  width: autohightwidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue[500],
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          textEditingController.text =
                              textEditingController.text + "0";
                        },
                      );
                    },
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

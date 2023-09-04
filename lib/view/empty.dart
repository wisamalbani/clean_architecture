import 'package:flutter/material.dart';

import '../core/constant/list_menu.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var txtcont;
  var txtfrmfld;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 25),
            //// مربع ادخال الارقام
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 300,
                  color: Colors.white,
                  child: TextFormField(
                    controller: txtcont,
                    autofocus: true,
                    cursorColor: Colors.black,
                    cursorHeight: 30,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            ///// الازرار
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    //// ازرار الالة الحاسبة
                    Column(
                      children: [
                        //// الارقام
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 250,
                          width: 250,
                          child: GridView.builder(
                              itemCount: num.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 1.5,
                                crossAxisCount: 3,
                                mainAxisSpacing: 5,
                                crossAxisSpacing: 5,
                              ),
                              itemBuilder: (context, i) {
                                return IconButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        txtfrmfld = 1;
                                      },
                                    );
                                  },
                                  icon: ListTile(
                                    tileColor: Colors.grey[400],
                                    title: Text(
                                      "${num[i]["no"]}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    //// عمود العمليات الحسابية
                    Column(
                      children: [
                        Container(
                          // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          height: 250,
                          width: 100,
                          // color: Colors.amber,
                          child: GridView.builder(
                            itemCount: calc.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1.85,
                              crossAxisCount: 1,
                              mainAxisSpacing: 3,
                            ),
                            itemBuilder: (context, i) {
                              return IconButton(
                                onPressed: () {
                                  setState(
                                    () {},
                                  );
                                },
                                icon: ListTile(
                                  tileColor: Colors.grey[400],
                                  title: Text(
                                    "${calc[i]["sym"]}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

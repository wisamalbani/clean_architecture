import 'package:flutter/material.dart';

class ContainerTest extends StatefulWidget {
  const ContainerTest({super.key});

  @override
  State<ContainerTest> createState() => _ContainerTestState();
}

class _ContainerTestState extends State<ContainerTest> {
  TextEditingController textEditingController = TextEditingController();
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(49),
        child: Column(
          children: [
            TextFormField(
              autocorrect: true,
              cursorColor: Colors.red,
              cursorHeight: 30,
              style: const TextStyle(color: Colors.green, fontSize: 30),
              decoration: InputDecoration(
                //  hintText: "Enter user name",
                hintStyle: const TextStyle(
                  color: Colors.red,
                ),
                //  fillColor: Colors.grey,
                //  filled: true,
                labelText: "UserName",
                floatingLabelAlignment: FloatingLabelAlignment.start,
                //  floatingLabelBehavior: FloatingLabelBehavior.never,
                // disabledBorder: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(20),
                //     borderSide: BorderSide(
                //       color: Colors.green,
                //       width: 3,
                //     ))
                enabled: true,
                prefixIcon: const Icon(
                  Icons.search,
                ),
                suffixIcon: InkWell(
                    onTap: () {}, child: const Icon(Icons.ac_unit_rounded)),
              ),
              //
              readOnly: false,
              keyboardType: TextInputType.emailAddress,
              maxLength: 25,

              //  obscureText: true,
              onTap: () {
                print("on tap");
              },
              onChanged: (value) {
                setState(() {
                  text = value;
                });
                print(textEditingController.text);
              },
              onEditingComplete: () {
                print("onEditingComplete");
                textEditingController.clear();
              },
              // initialValue: "09",
              controller: textEditingController,
            ),
            const SizedBox(height: 50),
            Card(
              elevation: 19,
              child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.grey.shade300,
                  child: Text(text)),
            ),
          ],
        ),
      )),
    );
  }
}

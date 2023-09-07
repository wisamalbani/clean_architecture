import 'package:flutter/material.dart';
import '../widgets/LoginButton_login.dart';
import '../widgets/TextFormField_login.dart';

class Txtfrmhw extends StatefulWidget {
  const Txtfrmhw({super.key});

  @override
  State<Txtfrmhw> createState() => _TxtfrmhwState();
}

class _TxtfrmhwState extends State<Txtfrmhw> {
  bool obtxt = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              //// Red & White background
              Column(
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  Expanded(child: Container(color: Colors.white)),
                ],
              ),
              //// Data Square
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 15,
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          height: 270,
                          width: 300,
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              const Text("Hello",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                              const SizedBox(height: 10),
                              const Text("Please Login to Your Account"),
                              const SizedBox(height: 20),

                              //// Email Address Input
                              const TextFormFieldLogin(
                                obscureText: false,
                                lableText: "Email Address",
                                suffix: Icon(Icons.email_outlined,
                                    color: Colors.red),
                              ),
                              const SizedBox(height: 15),

                              //// Password Input
                              TextFormFieldLogin(
                                obscureText: obtxt,
                                lableText: "Password",
                                suffix: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      obtxt = !obtxt;
                                    });
                                  },
                                  icon: obtxt
                                      ? const Icon(Icons.visibility,
                                          color: Colors.grey)
                                      : const Icon(Icons.visibility_off,
                                          color: Colors.grey),
                                ),
                              ),

                              const SizedBox(height: 10),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Forget Password?",
                                    style: TextStyle(color: Colors.orange[800]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              //// Login Button Position
              const LogInButton(),
            ],
          ),
        ),
      ),
    );
  }
}

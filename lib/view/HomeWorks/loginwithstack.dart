import 'package:flutter/material.dart';

class txtfrmhw extends StatefulWidget {
  const txtfrmhw({super.key});

  @override
  State<txtfrmhw> createState() => _txtfrmhwState();
}

class _txtfrmhwState extends State<txtfrmhw> {
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
                          padding: EdgeInsets.all(15),
                          height: 270,
                          width: 300,
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              Text("Hello",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(height: 10),
                              Text("Please Login to Your Account"),
                              SizedBox(height: 20),
                              //// Email Address Input
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Email Address",
                                  suffixIcon: Icon(Icons.email_outlined,
                                      color: Colors.red),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              //// Password Input
                              TextFormField(
                                obscureText: obtxt,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  //// Show Password
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        obtxt = !obtxt;
                                      });
                                    },
                                    icon: obtxt
                                        ? Icon(Icons.visibility,
                                            color: Colors.grey)
                                        : Icon(Icons.visibility_off,
                                            color: Colors.grey),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),

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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 275),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //// Hidden Container, the Login button in it to put it in this position using Stack
                      Container(
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            //// Login Button only
                            Card(
                              elevation: 15,
                              color: Colors.transparent,
                              child: InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red[300],
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.all(15),
                                  height: 50,
                                  width: 200,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Login"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

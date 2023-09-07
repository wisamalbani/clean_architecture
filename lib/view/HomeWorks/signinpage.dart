import 'package:flutter/material.dart';

class Signinpage extends StatelessWidget {
  const Signinpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan[900],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(255, 236, 212, 137),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.all(25),
                  width: 350,
                  height: 350,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text("Type Your data here:"),
                      const SizedBox(height: 15),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 250,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 247, 236, 198),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            )),
                        child: const Row(
                          children: [
                            Icon(Icons.man),
                            SizedBox(width: 10),
                            Text("User Name"),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 250,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 247, 236, 198),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            )),
                        child: const Row(
                          children: [
                            Icon(Icons.password),
                            SizedBox(width: 10),
                            Text("Password"),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25),
                      Column(
                        children: [
                          const Text(
                            "Forgot Password ?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            alignment: Alignment.center,
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text(
                              "Signin",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "Signup",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ],
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

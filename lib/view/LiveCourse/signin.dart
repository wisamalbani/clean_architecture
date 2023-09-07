import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent),
        backgroundColor: Colors.blue[600],
        body:

            ////كل محتويات شاشة تسجيل الدخول
            Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "ًWelcome",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            ////المربع الابيض
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[350],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ////سطر اسم المستخدم
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.account_circle_sharp),
                      const SizedBox(width: 5),
                      Container(
                        width: 250,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[200],
                        ),
                        child: const Text(
                          "  User Name",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),

                  ////سطر كلمة المرور
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.password),
                      const SizedBox(width: 5),
                      Container(
                        width: 250,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[200],
                        ),
                        child: const Text(
                          "  Password",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),

                  ////مجموعة الازرار الثلاث التفاعلية
                  Column(
                    children: [
                      const Text(
                        "Forgot Password ?",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      ////زر تسجيل الدخول
                      Container(
                        alignment: Alignment.center,
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.indigo[500],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      ////زر تسجيل حساب جديد
                      const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

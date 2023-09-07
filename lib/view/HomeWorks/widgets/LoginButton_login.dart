import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 275),
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
                        padding: const EdgeInsets.all(15),
                        height: 50,
                        width: 200,
                        child: const Row(
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
    );
  }
}

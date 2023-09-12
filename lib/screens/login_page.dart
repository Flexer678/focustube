import 'package:flutter/material.dart';

import '../auth/auth_services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Flexible(
            flex: 2,
            child: Container(),
          ),
          Image.asset("assets/focustube.png", width: 300, height: 100),
          Container(
            child: const Text(
              "FOCUS TUBE",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: const Text("for those who want focus"),
          ),
          const SizedBox(height: 180),
          GestureDetector(
            onTap: () {
              print("signing");
              AuthService().signInWithGoogle();
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 9,
                      offset: const Offset(0, 9), // changes position of shadow
                    ),
                  ],
                  color: const Color.fromARGB(255, 96, 207, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Sign in to google", style: TextStyle(fontSize: 15)),
                  Image.asset("assets/google.png", width: 30)
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(),
          ),
        ]),
      )),
    );
  }
}

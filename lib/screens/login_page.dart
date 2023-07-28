import 'package:flutter/material.dart';

import '../auth/auth_services.dart';
import "package:google_sign_in/google_sign_in.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Flexible(
            child: Container(),
            flex: 2,
          ),
          Image.asset("assets/focustube.png", width: 300, height: 100),
          Container(
            child: Text(
              "FOCUS TUBE",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: Text("for those who want focus"),
          ),
          SizedBox(height: 180),
          GestureDetector(
            onTap: () {
              print("signing");
              AuthService().signInWithGoogle();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 9,
                      offset: Offset(0, 9), // changes position of shadow
                    ),
                  ],
                  color: Color.fromARGB(255, 96, 207, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Sign in to google", style: TextStyle(fontSize: 15)),
                  Image.asset("assets/google.png", width: 30)
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(),
            flex: 1,
          ),
        ]),
      )),
    );
  }
}

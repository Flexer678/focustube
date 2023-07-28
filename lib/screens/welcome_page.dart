import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          SizedBox(
            height: 24,
          ),
        ]),
      )),
    );
  }
}

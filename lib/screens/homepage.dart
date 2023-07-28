import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:focustube/screens/home_screen.dart';

import '../auth/auth_services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? user = FirebaseAuth.instance.currentUser!.email ??
      FirebaseAuth.instance.currentUser!.displayName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "${FirebaseAuth.instance.currentUser!.displayName!} ${FirebaseAuth.instance.currentUser!.email!}"),
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: [
        BottomNavigationBarItem(
          label: "home",
          tooltip: "1",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "subscription",
          tooltip: "1",
          icon: Icon(Icons.subscriptions),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AuthService().signOut();
        },
      ),
      body: Container(
        child: HomeScreen(),
      ),
    );
  }
}

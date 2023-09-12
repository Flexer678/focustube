import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:focustube/screens/acccounts_page.dart';
import 'package:focustube/screens/library_page.dart';
import 'package:focustube/screens/subscription_page.dart';

import '../auth/auth_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [const SubscriptionPage(), const LibraryPage(), const AccountsPage()];

  String? user = FirebaseAuth.instance.currentUser!.email ??
      FirebaseAuth.instance.currentUser!.displayName;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "${FirebaseAuth.instance.currentUser!.displayName!} ${FirebaseAuth.instance.currentUser!.email!}"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              label: "subscription",
              tooltip: "1",
              icon: Icon(Icons.subscriptions),
            ),
            BottomNavigationBarItem(
              label: "home",
              tooltip: "1",
              icon: Icon(
                Icons.video_library,
              ),
            ),
            BottomNavigationBarItem(
              label: "Account",
              tooltip: "1",
              icon: Icon(Icons.account_circle),
            )
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AuthService().signOut();
        },
      ),
      body: Container(
        child: pages[currentIndex],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:focustube/data/services.dart';
import 'package:focustube/screens/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import '../auth/auth_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: AuthService().handleAuthState());
  }
}


//APIService.instance.fetchSubsiptions();
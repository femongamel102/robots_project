import 'package:flutter/material.dart';
import 'package:robots_project/screens/home_screen/home_screen.dart';
import 'package:robots_project/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
      },
      home: const HomeScreen(),
    );
  }
}

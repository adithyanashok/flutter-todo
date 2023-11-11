import 'package:flutter/material.dart';
import 'package:todo/view/login/login.dart';
import 'package:todo/view/signup/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      routes: {
        "login": (context) => const LoginScreen(),
        "signup": (context) => const SignupScreen(),
      },
    );
  }
}

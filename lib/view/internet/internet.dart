import 'package:flutter/material.dart';

class InternetCheckScreen extends StatelessWidget {
  const InternetCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/no-internet.png"),
      ),
    );
  }
}

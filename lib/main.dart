import 'package:flutter/material.dart';
import 'package:login_desgin/page_home.dart';

void main() {
  runApp(LoginDesign());
}

class LoginDesign extends StatelessWidget {
  const LoginDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageHome(),
    );
  }
}

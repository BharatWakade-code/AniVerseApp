import 'package:aniverse/LoginSign/loginscreen.dart';
import 'package:aniverse/LoginSign/signupscreen.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen(
        ontap: togglePages,
      );
    } else {
      return SignupScreen(
        ontap: togglePages,
      );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:okeyy/screens/login_pages_screen.dart';
import 'package:okeyy/screens/login_screen.dart';
import 'package:okeyy/screens/login_screen1.dart';
import 'package:okeyy/screens/register_screen.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  //initially show login page
  bool showLOginPage = true;

  //toggle between login and register page
  void togglePages() {
    setState(() {
      showLOginPage = !showLOginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLOginPage) {
      return LoginPagesScreen(
        onTap: togglePages,
      );
    } else {
      return RegisterScreen(
        onTap: togglePages,
      );
    }
  }
}

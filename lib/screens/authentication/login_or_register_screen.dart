import 'package:flutter/material.dart';
import 'package:iderma/screens/authentication/login_pages_screen.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  //initially show login page
  bool showLOginPage = false;

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
      return LoginPagesScreen(
        onTap: togglePages,
      );
    }
  }
}

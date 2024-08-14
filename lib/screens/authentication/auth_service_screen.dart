import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:okeyy/screens/home_page_screen.dart';
import 'package:okeyy/screens/login_or_register_screen.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        //user logged in
        if (snapshot.hasData) {
          return HomePageScreen();
        }

        //user not logged in
        else {
          return const LoginOrRegisterPage();
        }
      },
    ));
  }
}

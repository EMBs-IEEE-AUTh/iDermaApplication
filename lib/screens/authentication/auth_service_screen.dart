import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iderma/screens/authentication/login_or_register_screen.dart';
import 'package:iderma/screens/home_screen.dart';

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
          return const HomePageScreen();
        }

        //user not logged in
        else {
          return const LoginOrRegisterPage();
        }
      },
    ));
  }
}

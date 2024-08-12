// Created by Ioanna Vrachni
import 'package:flutter/material.dart';
import 'package:iderma/screens/home_screen.dart';
// import 'SignUp.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: LogoPageContent(),
      ),
    );
  }
}

class LogoPageContent extends StatelessWidget {
  const LogoPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset(
              'assets/images/emb-sign.png',
              width: 150,
            ),

            const SizedBox(height: 20),
            const Text(
              'EMB',
              style: TextStyle(
                color: Color(0xFF2C3D8F),
                fontWeight: FontWeight.bold,
                fontSize: 77,
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              'Aristotle\nUniversity of\nThessaloniki',
              style: TextStyle(
                color: Color(0xFF2C3D8F),
                fontWeight: FontWeight.bold,
                fontSize: 27,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),
            Image.asset(
              'assets/images/introduction/details.png',
              width: 250,
            ),

            const SizedBox(height: 40), // Adjust the height as needed
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              
              child: const Text(
                'Tap to continue',
                style: TextStyle(
                  color: Color(0xFF2C3D8F),
                  fontSize: 20,
                  decoration: TextDecoration.none, // Remove underline
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

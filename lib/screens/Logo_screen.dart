import 'package:flutter/material.dart';
import 'package:okeyy/services/auth_services.dart';

//-------------------Ιωάννα-------------------------------

class LogoPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'lib/images/logo.png',
              width: 150,
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 30),
            Image.asset(
              'lib/images/details.png',
              width: 250,
            ),
            SizedBox(height: 40), // Adjust the height as needed
            GestureDetector(
              onTap: () {
                // Navigate to the SignUp page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AuthPage()),
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

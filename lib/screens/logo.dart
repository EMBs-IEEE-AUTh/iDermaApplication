import 'package:flutter/material.dart';
import 'SignUp.dart'; // Import the SignUp page



//--------------Ιωάννα------------------

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogoPage(),
    );
  }
}

class LogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: LogoPageContent(),
      ),
    );
  }
}

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
              'assets/logo.png',
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
              'assets/details.png',
              width: 250,
            ),
            SizedBox(height: 40), // Adjust the height as needed
            GestureDetector(
              onTap: () {
                // Navigate to the SignUp page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
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

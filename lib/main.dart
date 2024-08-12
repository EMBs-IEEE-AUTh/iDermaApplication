import 'package:flutter/material.dart';
import 'package:iderma/screens/introduction_screen.dart';

void main() {
  runApp(const IDermaApplication());
}

class IDermaApplication extends StatelessWidget {
  const IDermaApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:IntroductionScreen(),
    );
  }
}

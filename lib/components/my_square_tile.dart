import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  final String buttonText;
  final Function()? onTap;
  final double width; // Add a width parameter

  const SquareTile({
    super.key,
    required this.imagePath,
    required this.buttonText,
    required this.onTap,
    required this.width, // Default width is set to double.infinity
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, // Use the width parameter
      child: ElevatedButton.icon(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 12),
          backgroundColor: const Color.fromARGB(206, 238, 238, 240),
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          elevation: 0, // Remove shadow
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
            side: const BorderSide(
              color: Color.fromARGB(206, 238, 238, 240),
            ),
          ),
        ),
        icon: Image.asset(
          imagePath,
          width: 24,
          height: 24,
          color: Colors.black,
        ),
        label: Text(buttonText),
      ),
    );
  }
}

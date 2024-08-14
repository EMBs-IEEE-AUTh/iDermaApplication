import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;
  final bool isFormValid;
  final Color createAccountButtonColor;

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    required this.isFormValid,
    required this.createAccountButtonColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 60,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: isFormValid ? createAccountButtonColor : Colors.grey,
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 15, // Adjusted to match original Text style
            fontWeight: FontWeight.normal,
          ),
          elevation: 0,
          padding: EdgeInsets.zero, // Ensure padding doesn't alter the size
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(50), // Match Container border radius
            side: BorderSide(
              color: isFormValid
                  ? createAccountButtonColor
                  : Colors.transparent, // Keep border color logic
            ),
          ),
        ),
        child: Text(buttonText),
      ),
    );
  }
}

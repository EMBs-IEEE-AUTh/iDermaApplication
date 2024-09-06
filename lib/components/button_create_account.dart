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
        onPressed: isFormValid ? onTap : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: isFormValid
              ? createAccountButtonColor
              : const Color.fromRGBO(
                  44, 61, 143, 1.0), // Set to pink when not valid
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
          elevation: 0,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(
              color: isFormValid
                  ? createAccountButtonColor
                  : const Color.fromRGBO(44, 61, 143,
                      1.0), // Set border color to pink when not valid
            ),
          ),
        ),
        child: Text(buttonText),
      ),
    );
  }
}

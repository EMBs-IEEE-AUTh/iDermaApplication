import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iderma/components/my_button.dart';
import 'package:iderma/components/my_square_tile.dart';
import 'package:iderma/screens/authentication/auth/auth_service.dart';
import 'package:iderma/screens/authentication/sign_up_screen.dart';
import 'package:iderma/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  OverlayEntry? _overlayEntry;

  void showLoadingOverlay() {
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned.fill(
        child: Material(
          color: Colors.black.withOpacity(0.5),
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  void hideLoadingOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void showAlert(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(message),
        );
      },
    );
  }

  void signUserIn() async {
    showLoadingOverlay();

    try {
      final userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      print(
          "User signed in: ${userCredential.user?.email}"); // Debugging print statement

      // Navigate to the HomePageScreen after a successful sign-in
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePageScreen()),
      );
    } on FirebaseAuthException catch (e) {
      print("FirebaseAuthException: ${e.message}"); // Debugging print statement

      if (e.code == 'user-not-found') {
        showAlert('Incorrect Email');
      } else if (e.code == 'wrong-password') {
        showAlert('Incorrect Password');
        hideLoadingOverlay();
      } else {
        showAlert('An error occurred. Please try again.');
      }
    } catch (e) {
      print("Unexpected error: $e"); // Debugging print statement
      showAlert('An unexpected error occurred. Please try again.');
    } finally {
      hideLoadingOverlay();
    }
  }

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Name of the team
            buildInitialBox(),
            const SizedBox(height: 20),

            // Login logo
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 20),
                    const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(44, 61, 143, 1.0)),
                    ),
                    const SizedBox(height: 0),
                    const Text(
                      'Find your personal dermatologist now for free',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 30),

                    // TextBox for Email
                    const Text(
                      'Email Address',
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 99, 99, 99)),
                        filled: true,
                        fillColor: Color(0xFFF4F4F4),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12.0),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // TextBox for Password
                    const Text(
                      'Password',
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 99, 99, 99)),
                        filled: true,
                        fillColor: Color(0xFFF4F4F4),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12.0),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value!;
                            });
                          },
                          activeColor: Colors
                              .green, // Changes the color of the checkbox when checked
                          checkColor: Colors
                              .white, // Changes the color of the check icon
                        ),
                        const Text(
                          'Remember me',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Sign in button
                    MyButton(onTap: signUserIn, text: 'Sign In'),

                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 16),
                          backgroundColor: const Color(0xFF2C3D8F),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                            side: const BorderSide(color: Color(0xFF2C3D8F)),
                          ),
                        ),
                        label: const Text('Create Account'),
                        icon: const Icon(Icons.account_circle,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        'or',
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Google button
                        SquareTile(
                          imagePath: 'assets/images/logos/google.png',
                          buttonText: 'Sign In with Google',
                          onTap: () => AuthService().signInWithGoogle(),
                          width: 400.00,
                        ),
                        const SizedBox(height: 10),

                        // Apple button
                        // SquareTile(
                        //     imagePath: 'assets/images/logos/apple.png',
                        //     buttonText: 'Sign In with Apple ID',
                        //     onTap: () => AuthService().signInWithGoogle(),
                        //     width: 100),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildInitialBox() {
  return Container(
    color: const Color.fromRGBO(44, 61, 143, 1.0),
    width: double.infinity,
    padding: const EdgeInsets.only(top: 70.0),
    child: Container(
      width: 400,
      height: 100,
      color: const Color.fromRGBO(44, 61, 143, 1.0),
      child: const Center(
        child: Text(
          'iDerma',
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

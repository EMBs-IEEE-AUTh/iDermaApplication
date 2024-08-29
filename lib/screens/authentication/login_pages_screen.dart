import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iderma/components/my_square_tile.dart';
import 'package:iderma/screens/authentication/auth/auth_service.dart';
import 'package:iderma/screens/authentication/login_with_email_screen.dart';
import 'package:iderma/screens/authentication/sign_up_screen.dart';

class LoginPagesScreen extends StatefulWidget {
  final Function()? onTap;

  const LoginPagesScreen({super.key, this.onTap});

  @override
  State<LoginPagesScreen> createState() => _LoginPagesScreenState();
}

class _LoginPagesScreenState extends State<LoginPagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Logo Container
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 70.0, bottom: 6),
            decoration: const BoxDecoration(
              color: Color(0xFF2C3D8F),
            ),
            child: const Center(
              child: Text(
                'iDerma',
                style: TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // Login Text
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 20),
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Find your personal dermatologist now for free',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Google Sign-In Button
                  SquareTile(
                    imagePath: 'assets/images/logos/google.png',
                    buttonText: 'Sign In with Google',
                    onTap: () => AuthService().signInWithGoogle(),
                    width: 400.00,
                  ),
                  const SizedBox(height: 10),

                  // Apple Sign-In Button
                  SquareTile(
                    imagePath: 'assets/images/logos/apple.png',
                    buttonText: 'Sign In with Apple ID',
                    onTap: () => AuthService().signInWithGoogle(),
                  ),

                  const SizedBox(height: 20),

                  // Facebook Sign-In
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Implement Facebook Sign-In
                      },
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                        backgroundColor: const Color(0xFF3B5998),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        elevation: 0, // Remove shadow
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                          side: const BorderSide(color: Color(0xFF3B5998)),
                        ),
                      ),
                      icon: const Icon(Icons.facebook_rounded,
                          color: Colors.white),
                      label: const Text('Sign in with Facebook'),
                    ),
                  ),

                  // Email Sign-In
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        elevation: 0, // Remove shadow
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                          side: const BorderSide(color: Color(0xFFD4D4D4)),
                        ),
                      ),
                      label: const Text('Sign in via Email'),
                      icon: const SizedBox.shrink(),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Center(
                    child: Text(
                      'or',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                        backgroundColor: const Color(0xFF2C3D8F),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        elevation: 0, // Remove shadow
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                          side: const BorderSide(color: Color(0xFF2C3D8F)),
                        ),
                      ),
                      label: const Text('Create Account'),
                      icon:
                          const Icon(Icons.account_circle, color: Colors.white),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Created by Aristotelis Pallasidis
import 'package:flutter/material.dart';

class LoginWithEmailScreen extends StatelessWidget {
  const LoginWithEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 50.0, bottom: 6),
                decoration: const BoxDecoration(
                  color: Color(0xFF2C3D8F),
                ),
                child: const Center(
                  child: Text(
                    'iDerma',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
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
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Find your personal dermatologist now for free',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Email Address',
                        style: TextStyle(color: Colors.black),
                      ),
                      const SizedBox(height: 10),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'jane@example.com',
                          hintStyle:
                              TextStyle(color: Color.fromARGB(255, 99, 99, 99)),
                          filled: true,
                          fillColor: Color(0xFFF4F4F4),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 12.0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Password',
                        style: TextStyle(color: Colors.black),
                      ),
                      const SizedBox(height: 10),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: '•••••••••••',
                          hintStyle:
                              TextStyle(color: Color.fromARGB(255, 99, 99, 99)),
                          filled: true,
                          fillColor: Color(0xFFF4F4F4),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 12.0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Checkbox(value: false, onChanged: (bool? value) {}),
                          const Text(
                            'Remember me',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: constraints.maxWidth *
                              1, // 100% of the container's width
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade900,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: const Text(
                              'Connect',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xFF5A81FA),
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          child: const Text('Create Account'),
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
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            elevation: 0, // Remove shadow
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              side: const BorderSide(color: Color(0xFFD4D4D4)),
                            ),
                          ),
                          icon: const Icon(Icons.login, color: Colors.red),
                          label: const Text('Sign up with Google'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            elevation: 0, // Remove shadow
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              side: const BorderSide(color: Color(0xFFD4D4D4)),
                            ),
                          ),
                          icon: const Icon(Icons.facebook_rounded,
                              color: Colors.blue),
                          label: const Text('Sign up with Facebook'),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

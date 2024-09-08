// Created by Evangelia Petraki
import 'package:flutter/material.dart';
import 'package:iderma/components/top_navigation_bar.dart';

class TearmsOfUseScreen extends StatelessWidget {
  const TearmsOfUseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          appBar: TopNavigationAppBar(),
          body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Terms Of Use',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C3D8F),
                      ),
                    ),

                    SizedBox(height: 16),
                    Text(
                      'Welcome to iDerma, a skin disease recognition app developed by iDerma Inc. \nThese Terms of Use ("Terms") govern your use of the iDerma app and related services.',
                      style: TextStyle(
                          fontSize: 16,
                          height: 1.8,
                          fontFamily: 'Inter',
                          color: Color(0xFF1A1A19),
                          fontWeight: FontWeight.w400),
                    ),

                    SizedBox(height: 16),
                    Text(
                      'By using the iDerma app, you agree to these Terms. If you do not agree to these Terms, do not use the iDerma app.',
                      style: TextStyle(
                          fontSize: 16,
                          height: 1.8,
                          fontFamily: 'Inter',
                          color: Color(0xFF1A1A19),
                          fontWeight: FontWeight.w400),
                    ),

                    SizedBox(height: 16),
                    Text.rich(
                      TextSpan(
                          text: '1. Use of the iDerma App: ',
                          style: TextStyle(
                              fontSize: 18,
                              height: 1.8,
                              fontFamily: 'Inter',
                              color: Color(0xFF1A1A19),
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  '\nThe iDerma app is for personal and informational use only. You may not use the iDerma app for commercial purposes or in any way that violates these Terms or applicable laws.',
                              style: TextStyle(
                                  fontSize: 18,
                                  height: 1.8,
                                  fontFamily: 'Inter',
                                  color: Color(0xFF1A1A19),
                                  fontWeight: FontWeight.w400),
                            )
                          ]),
                    ),

                    SizedBox(height: 16),
                    Text.rich(
                      TextSpan(
                          text: '2. Accuracy of Information: ',
                          style: TextStyle(
                              fontSize: 18,
                              height: 1.8,
                              fontFamily: 'Inter',
                              color: Color(0xFF1A1A19),
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  '\nThe iDerma app provides information about skin diseases and nearby healthcare professionals. While we make every effort to ensure the accuracy of this information, we cannot guarantee that it is completely up to date, accurate, or complete. You should always consult a healthcare professional for any medical advice or treatment.',
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 1.8,
                                  fontFamily: 'Inter',
                                  color: Color(0xFF1A1A19),
                                  fontWeight: FontWeight.w400),
                            )
                          ]),
                    ),

                    // SizedBox(height: 30),
                    // Text (
                    //     'Privacy Policy',
                    //   style: TextStyle(
                    //     fontSize: 19.0,
                    //     height: 1.8 ,

                    //     color: Color(0xFF1A1A19),
                    //     fontWeight: FontWeight.bold,
                    //     decoration: TextDecoration.underline

                    //     ),
                    // ),

                    SizedBox(height: 16),
                    Text.rich(
                      TextSpan(
                          text: '3. Privacy: ',
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.8,
                              fontFamily: 'Inter',
                              color: Color(0xFF1A1A19),
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  '\nOur Privacy Policy explains how we collect, use, and protect your personal information. By using the iDerma app, you consent to our collection and use of your personal information as described in the Privacy Policy.',
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 1.8,
                                  fontFamily: 'Inter',
                                  color: Color(0xFF1A1A19),
                                  fontWeight: FontWeight.w400),
                            )
                          ]),
                    ),

                    SizedBox(height: 16),
                    Text.rich(
                      TextSpan(
                          text: '4. Intellectual Property: ',
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.8,
                              fontFamily: 'Inter',
                              color: Color(0xFF1A1A19),
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  '\nAll content on the iDerma app, including text, images, and logos, is the property of iDerma Inc. and is protected by copyright and other intellectual property laws. You may not reproduce, distribute, or modify any content on the iDerma app without our prior written consent.',
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 1.8,
                                  fontFamily: 'Inter',
                                  color: Color(0xFF1A1A19),
                                  fontWeight: FontWeight.w400),
                            )
                          ]),
                    ),

                    SizedBox(height: 16),
                    Text.rich(
                      TextSpan(
                          text: '5. Disclaimer of Warranties: ',
                          style: TextStyle(
                              fontSize: 18,
                              height: 1.8,
                              fontFamily: 'Inter',
                              color: Color(0xFF1A1A19),
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  '\nThe iDerma app is provided "as is" without warranty of any kind, whether express or implied. We do not warrant that the iDerma app will be error-free or uninterrupted, or that it will meet your requirements. We disclaim all warranties, including any implied warranties of merchantability, fitness for a particular purpose, and non-infringement. You may not reproduce, distribute, or modify any content on the iDerma app without our prior written consent.',
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 1.8,
                                  fontFamily: 'Inter',
                                  color: Color(0xFF1A1A19),
                                  fontWeight: FontWeight.w400),
                            )
                          ]),
                    ),

                    SizedBox(height: 16),
                    Text.rich(
                      TextSpan(
                          text: '6. Limitation of Liability: ',
                          style: TextStyle(
                              fontSize: 18,
                              height: 1.8,
                              fontFamily: 'Inter',
                              color: Color(0xFF1A1A19),
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  '\nIn no event shall iDerma Inc. be liable for any damages, including without limitation, direct or indirect, incidental, special, or consequential damages arising out of or in connection with your use of the iDerma app.',
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 1.8,
                                  fontFamily: 'Inter',
                                  color: Color(0xFF1A1A19),
                                  fontWeight: FontWeight.w400),
                            )
                          ]),
                    ),

                    SizedBox(height: 16),
                    Text.rich(
                      TextSpan(
                          text: '7. Governing Law: ',
                          style: TextStyle(
                              fontSize: 18,
                              height: 1.8,
                              fontFamily: 'Inter',
                              color: Color(0xFF1A1A19),
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  '\nThese Terms shall be governed by and construed in accordance with the laws of the State of California, without giving effect to any principles of conflicts of law.',
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 1.8,
                                  fontFamily: 'Inter',
                                  color: Color(0xFF1A1A19),
                                  fontWeight: FontWeight.w400),
                            )
                          ]),
                    ),
                  ],
                )),
          )),
    );
  }
}

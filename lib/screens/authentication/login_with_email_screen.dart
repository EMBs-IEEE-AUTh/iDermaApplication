import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:okeyy/components/my_button.dart';
import 'package:okeyy/components/square_tile.dart';
import 'package:okeyy/screens/Sign_Up.dart';
import 'package:okeyy/screens/home_page_screen.dart';
import 'package:okeyy/services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  // final Function()? onTap;

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailcontroller = TextEditingController();

  final passwordcontroller = TextEditingController();

  void wrongEmailMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Incorrect Email'),
          );
        });
  }

  void wrongPasswordMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Incorrect Password'),
          );
        });
  }

  //sign user in method
  void signUserin() async {
    //show loading circle
    showDialog(
        context: context,
        barrierDismissible: false, // Prevent dismissing by tapping outside
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    //sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailcontroller.text, password: passwordcontroller.text);

      // Navigate to the HomePageScreen after a successful sign-in
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePageScreen()),
      );
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context); // Dismiss the loading spinner

      //Wrong email
      if (e.code == 'user-not-found') {
        wrongEmailMessage();
      }
      //Wrong password
      else if (e.code == 'wrong-password') {
        wrongPasswordMessage();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //name of the team
                buildInitialBox(),
                SizedBox(height: 20),

                //Login logo
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

                        //TextBox for Email
                        const Text(
                          'Email Address',
                          style: TextStyle(color: Colors.black),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: emailcontroller,
                          decoration: const InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 99, 99, 99)),
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

                        //TextBox for Password
                        const Text(
                          'Password',
                          style: TextStyle(color: Colors.black),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: passwordcontroller,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 99, 99, 99)),
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

                        //checkBox to remember the user
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

                        //sign in button
                        MyButton(onTap: signUserin, text: 'Sing In'),

                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // Navigate to a new page
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 16),
                              backgroundColor: const Color(0xFF2C3D8F),
                              foregroundColor: Colors.white,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              elevation: 0, // Remove shadow
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                side:
                                    const BorderSide(color: Color(0xFF2C3D8F)),
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
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //google button
                            SquareTile(
                                imagePath: 'lib/images/google.png',
                                buttonText: 'Sign In with google',
                                onTap: () => AuthService().signInWithGoogle(),
                                width: 400.00),

                            const SizedBox(height: 10),

                            //apple button
                            SquareTile(
                              imagePath: 'lib/images/apple.png',
                              buttonText: 'Sign In with Apple ID',
                              onTap: () => AuthService().signInWithGoogle(),
                            )
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
        ));
  }
}

Widget buildInitialBox() {
  return Container(
    color: Color.fromRGBO(44, 61, 143, 1.0),
    width: double.infinity,
    padding: EdgeInsets.only(top: 70.0),
    child: Container(
      width: 400,
      height: 82,
      color: Color.fromRGBO(44, 61, 143, 1.0),
      child: Center(
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

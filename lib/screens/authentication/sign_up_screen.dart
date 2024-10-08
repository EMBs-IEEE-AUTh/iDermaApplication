import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iderma/components/button_create_account.dart';
import 'package:iderma/components/my_square_tile.dart';
import 'package:iderma/screens/authentication/auth/auth_service.dart';
import 'package:iderma/screens/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// Import the new page

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final List<String> placeholderTexts = [
    'First Name',
    'Last Name',
    'Email Address',
    'Password',
    'Confirm password',
  ];

  Color createAccountButtonColor = const Color.fromRGBO(44, 61, 143, 1.0);
  Color googleButtonColor = const Color.fromRGBO(246, 246, 248, 1);
  Color facebookButtonColor = const Color.fromRGBO(44, 61, 143, 1.0);

  bool isChecked = false;
  bool isFormValid = false;

//---------------------------------------------------CONTROLLERS---------------------------------------------------------

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  OverlayEntry? _overlayEntry;

//---------------------------------------------------ACTION_LISTENERS----------------------------------------------------------

  @override
  void initState() {
    super.initState();
    _firstNameController.addListener(_checkFormValidity);
    _lastNameController.addListener(_checkFormValidity);
    _emailController.addListener(_checkFormValidity);
    _passwordController.addListener(_checkFormValidity);
    _confirmPasswordController.addListener(_checkFormValidity);
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

//---------------------------------------------------VERIFICATION_FOR_CONTROLLERS---------------------------------------------------------

  void _checkFormValidity() {
    setState(() {
      isFormValid = _firstNameController.text.isNotEmpty &&
          _lastNameController.text.isNotEmpty &&
          _emailController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty &&
          _confirmPasswordController.text.isNotEmpty &&
          isChecked;
    });
  }

//---------------------------------------------------CREATE_ACCOUNT_BOXES---------------------------------------------------------

  void _createAccount() {
    if (isFormValid) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePageScreen()),
      );
    }
  }

//---------------------------------------------------Loading_Overlay------------------------------------------------------------------

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

  //------------------------------------------------Show_Error_Message------------------------------------------------------------
  void showErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(message),
          );
        });
  }

  //------------------------------------------------Sign_User_Up------------------------------------------------------------------
  void signUserUp() async {
    // Show loading circle
    // showDialog(
    //   context: context,
    //   barrierDismissible: false,
    //   builder: (context) {
    //     return const Center(child: CircularProgressIndicator());
    //   },
    // );

    showLoadingOverlay();

    try {
      // Check if password and confirm password are the same
      if (_passwordController.text == _confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        // Navigate to Home Screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePageScreen()),
        );
      } else {
        // Navigator.pop(context);
        // Show error message if passwords don't match
        showErrorMessage("Passwords don't match");
        // Navigator.pop(context);

        // Navigate to Home Screen
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignUp()));
      }
    } on FirebaseAuthException catch (e) {
      // Handle errors
      // Navigator.pop(context); // Close the loading spinner
      if (e.code == 'email-already-in-use') {
        showErrorMessage("This email is already in use.");
        // Navigator.pop(context);
      } else if (e.code == 'weak-password') {
        showErrorMessage("Your password is too weak.");
        // Navigator.pop(context);
      } else {
        showErrorMessage("Something went wrong. Please try again.");
      }
    } catch (e) {
      Navigator.pop(
          context); // Close the loading spinner in case of unexpected errors
      showErrorMessage("An unexpected error occurred.");
    } finally {
      hideLoadingOverlay();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildInitialBox(),
              const SizedBox(height: 30),
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromRGBO(44, 61, 143, 1.0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Aligns text and text box to the left
                children: [
                  const Text(
                    'First Name',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(44, 61, 143, 1.0),
                    ), // You can adjust the font size if needed
                  ),
                  const SizedBox(
                      height:
                          4), // Add a small space between the label and the text box
                  buildTextBox(
                    controller: _firstNameController,
                    placeholderText: placeholderTexts[0],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Aligns text and text box to the left
                children: [
                  const Text(
                    'Last Name',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(44, 61, 143, 1.0),
                    ), // You can adjust the font size if needed
                  ),
                  const SizedBox(
                      height:
                          4), // Add a small space between the label and the text box
                  buildTextBox(
                    controller: _lastNameController,
                    placeholderText: placeholderTexts[1],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Aligns text and text box to the left
                children: [
                  const Text(
                    'Email Address',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(44, 61, 143, 1.0),
                    ), // You can adjust the font size if needed
                  ),
                  const SizedBox(
                      height:
                          4), // Add a small space between the label and the text box
                  buildTextBox(
                    controller: _emailController,
                    placeholderText: placeholderTexts[2],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Aligns text and text box to the left
                children: [
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(44, 61, 143, 1.0),
                    ), // You can adjust the font size if needed
                  ),
                  const SizedBox(
                      height:
                          4), // Add a small space between the label and the text box
                  buildTextBox(
                    controller: _passwordController,
                    placeholderText: placeholderTexts[3],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Aligns text and text box to the left
                children: [
                  const Text(
                    'Confirm Password',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(44, 61, 143, 1.0),
                    ), // You can adjust the font size if needed
                  ),
                  const SizedBox(
                      height:
                          4), // Add a small space between the label and the text box
                  buildTextBox(
                    controller: _confirmPasswordController,
                    placeholderText: placeholderTexts[4],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                        _checkFormValidity();
                      });
                    },
                  ),
                  const Text(
                    'I agree to the terms and conditions',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomButton(
                buttonText: 'Create Account',
                isFormValid:
                    isFormValid, // Boolean to check if the form is valid
                createAccountButtonColor:
                    const Color.fromRGBO(44, 61, 143, 1.0), // Your button color
                onTap: () {
                  signUserUp();
                  CollectionReference collRef =
                      FirebaseFirestore.instance.collection('client');
                  collRef.add({
                    'Name': _firstNameController.text,
                    'Surname': _lastNameController.text,
                    'Email': _emailController.text,
                  }).then((value) {
                    print("User Added");
                  }).catchError((error) {
                    print("Failed to add user: $error");
                  });
                },
              ),
              const SizedBox(height: 8),
              const Text(
                'or',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(44, 104, 226, 1),
                ),
              ),
              const SizedBox(height: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button
                  SquareTile(
                      onTap: () => AuthService().signInWithGoogle(),
                      imagePath: 'assets/images/logos/google.png',
                      buttonText: 'Sign In With Google',
                      width: 300),

                  const SizedBox(
                    height: 10,
                  ),

                  //apple button
                  SquareTile(
                      onTap: () => AuthService().signInWithGoogle(),
                      imagePath: 'assets/images/logos/apple.png',
                      buttonText: 'Sign In With Apple ID',
                      width: 300)
                ],
              ),
              const SizedBox(height: 50),
              buildInitialBoxLogo(),
            ],
          ),
        ),
      ),
    );
  }

//---------------------------------------------------UPPER_LOG0---------------------------------------------------------

  Widget buildInitialBox() {
    return Container(
      color: const Color.fromRGBO(44, 61, 143, 1.0),
      width: double.infinity,
      padding: const EdgeInsets.only(top: 65.0),
      child: Container(
        width: 320,
        height: 78,
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

//---------------------------------------------------TEXT_BOXES---------------------------------------------------------

  Widget buildTextBox(
      {required TextEditingController controller,
      required String placeholderText}) {
    return Container(
      width: 260,
      height: 35,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(206, 222, 250, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(width: 15),
          Expanded(
            child: TextFormField(
              controller: controller,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: placeholderText,
                hintStyle: const TextStyle(
                  color: Color.fromRGBO(44, 61, 143, 1.0),
                ),
                contentPadding: EdgeInsets.zero,
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }

//---------------------------------------------------CREATE_ACCOUNT_BUTTON--------------------------------------------------------

  Widget buildCircularButton() {
    return GestureDetector(
      onTap: isFormValid ? _createAccount : null,
      onTapDown: (_) {
        if (isFormValid) {
          setState(() {
            createAccountButtonColor = const Color.fromARGB(255, 195, 208, 233);
          });
        }
      },
      onTapUp: (_) {
        if (isFormValid) {
          setState(() {
            createAccountButtonColor = const Color.fromRGBO(44, 61, 143, 1.0);
          });
        }
      },
      child: CustomButton(
        buttonText: '',
        isFormValid: isFormValid, // Boolean to check if the form is valid
        createAccountButtonColor:
            const Color.fromRGBO(44, 61, 143, 1.0), // Your button color
        onTap: () {
          CollectionReference collRef =
              FirebaseFirestore.instance.collection('client');
          collRef.add({
            'Name': _firstNameController.text,
            'Surname': _lastNameController.text,
            'Email': _emailController.text,
          }).then((value) {
            print("User Added");
          }).catchError((error) {
            print("Failed to add user: $error");
          });
        },
      ),
    );
  }

//---------------------------------------------------LOWER_LOG0---------------------------------------------------------

  Widget buildInitialBoxLogo() {
    return Container(
      color: const Color.fromRGBO(44, 61, 143, 1.0),
      width: double.infinity,
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        width: 60,
        height: 42,
        color: const Color.fromRGBO(44, 61, 143, 1.0),
        child: const Center(
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 0.5),
              child: Text(
                'EMB AUTH',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

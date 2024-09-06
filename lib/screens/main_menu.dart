import 'package:flutter/material.dart';
import 'package:iderma/screens/about_emb_screen.dart';
import 'package:iderma/screens/authentication/auth/authentication_service.dart';
import 'package:iderma/screens/authentication/login_pages_screen.dart';
import 'package:iderma/screens/home_screen.dart';
import 'package:iderma/screens/how_the_model_works_screen.dart';
import 'package:iderma/screens/terms_of_use_screen.dart';
import 'package:provider/provider.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF2C3D8F),
        title: const Text('iDerma',
            style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Navigate back to the previous page
            },
            child: const Text('Close',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal)),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: const Color(0xFF2C3D8F),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 16, left: 10, right: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Wrapping the menu items in a Flexible widget
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 10),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePageScreen()),
                        );
                      },
                      // icon: const ImageIcon(
                      //   AssetImage('assets/images/main_menu_icons/home.png'),
                      //   color: Colors.white,
                      // ),
                      icon: const Icon(
                        Icons.home, // Change this to the desired icon
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Homepage',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const HowTheModelWorksScreen()),
                        );
                      },
                      // icon: const ImageIcon(
                      //   AssetImage('assets/images/main_menu_icons/gear.png'),
                      //   color: Colors.white,
                      // ),
                      icon: const Icon(
                        Icons
                            .settings_suggest, // Change this to the desired icon
                        color: Colors.white,
                      ),
                      label: const Text(
                        'How the Model Works',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TearmsOfUseScreen()),
                        );
                      },
                      // icon: const ImageIcon(
                      //   AssetImage(
                      //       'assets/images/main_menu_icons/privacy_policy.png'),
                      //   color: Colors.white,
                      // ),
                      icon: const Icon(
                        Icons.privacy_tip, // Change this to the desired icon
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Terms Of Use & Privacy Policy',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AboutEmbScreen()),
                        );
                      },
                      // icon: const ImageIcon(
                      //   AssetImage('assets/images/main_menu_icons/about.png'),
                      //   color: Colors.white,
                      // ),
                      icon: const Icon(
                        Icons.info, // Change this to the desired icon
                        color: Colors.white,
                      ),
                      label: const Text(
                        'About EMBs AUTh',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              // Add a Spacer to push the Logout button to the bottom
              const Spacer(),
              TextButton.icon(
                onPressed: () async {
                  await context.read<AuthenticationService>().signOut();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginPagesScreen()),
                  );
                },
                // icon: const ImageIcon(
                //   AssetImage('assets/images/main_menu_icons/logout.png'),
                //   color: Colors.white,
                // ),
                icon: const Icon(
                  Icons.logout, // Change this to the desired icon
                  color: Colors.white,
                ),
                label: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

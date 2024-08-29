import 'package:flutter/material.dart';
import 'package:iderma/screens/about_emb_screen.dart';
import 'package:iderma/screens/authentication/login_pages_screen.dart';
import 'package:iderma/screens/home_screen.dart';
import 'package:iderma/screens/how_the_model_works_screen.dart';
import 'package:iderma/screens/terms_of_use_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(44, 61, 143, 1),
        title: const Text('iDerma',
            style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w500)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePageScreen()),
              );
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
        color: const Color.fromRGBO(44, 61, 143, 1),
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 80), // Adjust this to move buttons higher or lower
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MenuItem(
                  text: 'Homepage',
                  icon: 'assets/images/main_menu_icons/home.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePageScreen()),
                    );
                    // Button payload
                  },
                ),
                const SizedBox(height: 25), // Add spacing between buttons
                MenuItem(
                  text: 'FaQ',
                  icon: 'assets/images/main_menu_icons/faq.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HowTheModelWorksScreen()),
                    );
                    // Button payload
                  },
                ),
                const SizedBox(height: 25), // Add spacing between buttons
                MenuItem(
                  text: 'How the Model Works',
                  icon: 'assets/images/main_menu_icons/gear.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HowTheModelWorksScreen()),
                    );
                  },
                ),

                const SizedBox(height: 25), // Add spacing between buttons
                MenuItem(
                  text: 'Terms Of Use',
                  icon: 'assets/images/main_menu_icons/terms_of_use.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TearmsOfUseScreen()),
                    );
                    // Button payload
                  },
                ),
                const SizedBox(height: 25), // Add spacing between buttons
                MenuItem(
                  text: 'Privacy Policy',
                  icon: 'assets/images/main_menu_icons/privacy_policy.png',
                  onTap: () {
                    // Button payload
                  },
                ),
                const SizedBox(height: 25), // Add spacing between buttons
                MenuItem(
                  text: 'About EMB',
                  icon: 'assets/images/main_menu_icons/about.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutEmbScreen()),
                    );
                    // Button payload
                  },
                ),
                const SizedBox(height: 3),
                MenuItem(
                  text: 'Logout',
                  icon: 'assets/images/main_menu_icons/logout.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPagesScreen()),
                    );
                    // Button payload
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final dynamic icon;
  final Function onTap;

  const MenuItem({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Check if iconData is provided
            _buildIcon(context),
            const SizedBox(width: 16),
            Text(
              text,
              style: const TextStyle(fontSize: 26, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    if (icon is IconData) {
      // Built-in icon
      return Icon(icon, size: 24, color: Colors.white);
    } else if (icon is String) {
      // Custom icon from assets
      return Image.asset(
        icon,
        width: 24,
        height: 24,
        color: Colors.white,
      );
    } else {
      return Container();
    }
  }
}

// import 'package:flutter/material.dart';
// import 'package:iderma/screens/about_emb_screen.dart';
// import 'package:iderma/screens/authentication/login_pages_screen.dart';
// import 'package:iderma/screens/home_screen.dart';
// import 'package:iderma/screens/how_the_model_works_screen.dart';
// import 'package:iderma/screens/terms_of_use_screen.dart';

// class MenuScreen extends StatelessWidget {
//   const MenuScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF2C3D8F),
//         title: const Text('iDerma',
//             style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 32,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w600)),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const HomePageScreen()),
//               );
//             },
//             child: const Text('Close',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                     fontWeight: FontWeight.normal)),
//           ),
//         ],
//       ),
//       body: Container(
//         color: const Color(0xFF2C3D8F),
//         child: Align(
//           alignment: Alignment.topCenter,
//           child: Padding(
//             padding: const EdgeInsets.only(
//                 top: 80), // Adjust this to move buttons higher or lower
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 MenuItem(
//                   text: 'Homepage',
//                   icon: 'assets/images/main_menu_icons/home.png',
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const HomePageScreen()),
//                     );
//                     // Button payload
//                   },
//                 ),

//                 const SizedBox(height: 16), // Add spacing between buttons
//                 MenuItem(
//                   text: 'How the Model Works',
//                   icon: 'assets/images/main_menu_icons/gear.png',
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const HowTheModelWorksScreen()),
//                     );
//                   },
//                 ),

//                 const SizedBox(height: 16), // Add spacing between buttons
//                 MenuItem(
//                   text: 'Terms Of Use & Privacy Policy',
//                   icon: 'assets/images/main_menu_icons/privacy_policy.png',
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const TearmsOfUseScreen()),
//                     );
//                     // Button payload
//                   },
//                 ),
//                 const SizedBox(height: 16), // Add spacing between buttons
//                 MenuItem(
//                   text: 'About EMBs AUTh',
//                   icon: 'assets/images/main_menu_icons/about.png',
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const AboutEmbScreen()),
//                     );
//                     // Button payload
//                   },
//                 ),
//                 const SizedBox(height: 3),
//                 MenuItem(
//                   text: 'Logout',
//                   icon: 'assets/images/main_menu_icons/logout.png',
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const LoginPagesScreen()),
//                     );
//                     // Button payload
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MenuItem extends StatelessWidget {
//   final String text;
//   final dynamic icon;
//   final Function onTap;

//   const MenuItem({
//     Key? key,
//     required this.text,
//     required this.icon,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () => onTap(),
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Check if iconData is provided
//             _buildIcon(context),
//             const SizedBox(width: 16),
//             Text(
//               text,
//               style: const TextStyle(fontSize: 26, color: Colors.white),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildIcon(BuildContext context) {
//     if (icon is IconData) {
//       // Built-in icon
//       return Icon(icon, size: 24, color: Colors.white);
//     } else if (icon is String) {
//       // Custom icon from assets
//       return Image.asset(
//         icon,
//         width: 24,
//         height: 24,
//         color: Colors.white,
//       );
//     } else {
//       return Container();
//     }
//   }
// }

// ---------------------------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:iderma/components/top_navigation_bar.dart';
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
      appBar: const TopNavigationAppBar(),
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
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePageScreen()),
                        );
                      },
                      icon: const ImageIcon(
                        AssetImage('assets/images/main_menu_icons/home.png'),
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Homepage',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const HowTheModelWorksScreen()),
                        );
                      },
                      icon: const ImageIcon(
                        AssetImage('assets/images/main_menu_icons/gear.png'),
                        color: Colors.white,
                      ),
                      label: const Text(
                        'How the Model Works',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TearmsOfUseScreen()),
                        );
                      },
                      icon: const ImageIcon(
                        AssetImage(
                            'assets/images/main_menu_icons/privacy_policy.png'),
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Terms Of Use & Privacy Policy',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AboutEmbScreen()),
                        );
                      },
                      icon: const ImageIcon(
                        AssetImage('assets/images/main_menu_icons/about.png'),
                        color: Colors.white,
                      ),
                      label: const Text(
                        'About EMBs AUTh',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              // Add a Spacer to push the Logout button to the bottom
              const Spacer(),
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginPagesScreen()),
                  );
                },
                icon: const ImageIcon(
                  AssetImage('assets/images/main_menu_icons/logout.png'),
                  color: Colors.white,
                ),
                label: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

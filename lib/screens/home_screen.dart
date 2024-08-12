// Created by Aristotelis Pallasidis
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iderma/components/top_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    return Scaffold(
      appBar: const TopNavigationAppBar(),

      // ---------- BOTTOM NAVIGATION BAR ----------
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: const Color(0xFF2C3D8F),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            label: 'Home',
            icon: Icon(Icons.home),
            selectedIcon: Icon(Icons.home, color: Colors.white),
          ),
          NavigationDestination(
            label: 'Scan',
            icon: Icon(Icons.photo_camera),
            selectedIcon: Icon(Icons.photo_camera, color: Colors.white),
          ),
          NavigationDestination(
            label: 'Profile',
            icon: Icon(Icons.person),
            selectedIcon: Icon(Icons.person, color: Colors.white),
          ),
        ],
      ),
      // ---------- BOTTOM NAVIGATION BAR ----------

      body: [
        /// Home page
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 16, bottom: 32),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          NetworkImage('https://via.placeholder.com/150'),
                    ),
                    SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                        Text(
                          'Aristotelia' '!',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                padding: const EdgeInsets.only(top: 6, bottom: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFF2C3D8F),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Latest Results',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C3D8F),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Nothing suspicious yet' '!',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    const Text(
                      'Nearby Doctors',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C3D8F),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 100, // Adjust height as needed
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildRoundedImage('https://via.placeholder.com/100'),
                          _buildRoundedImage('https://via.placeholder.com/100'),
                          _buildRoundedImage('https://via.placeholder.com/100'),
                          _buildRoundedImage('https://via.placeholder.com/100'),
                          _buildRoundedImage('https://via.placeholder.com/100'),
                          _buildRoundedImage('https://via.placeholder.com/100'),
                          _buildRoundedImage('https://via.placeholder.com/100'),
                          _buildRoundedImage('https://via.placeholder.com/100'),
                          _buildRoundedImage('https://via.placeholder.com/100'),
                          // Add more rounded images here
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Fun Facts',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C3D8F),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Did you know that your skin is the largest organ of your body? An adult's skin can cover an area of around 22 square feet (2 square meters) on average.",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),


        /// Scan page
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How to scan',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF2C3D8F),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Step 1:',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C3D8F),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'This button and Page is showed only the first time, or when you press from menu the Tab Help!',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Step 2:',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C3D8F),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'You will be dropped in a page with a picture frame. Give access to the app to use the phone’s camera and you’re Ready to go!',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Step 3:',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C3D8F),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Take the picture, you can retake if the quality is blurry or cancel to return to the menu.',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Step 4:',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C3D8F),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Wait for the result and see possible treatments or general information about the disease!',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 23),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // TODO: Uncomment the Scan Screen
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const ScanScreen()),
                  // );
                  if (kDebugMode) {
                    print('Scan button tapped!');
                  }
                },
                child: Container(
                  color: const Color(0xFF2C3D8F),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Make a new Scan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),


        /// Profile page
        const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Center(
              // Wrap the Column with Center widget
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile_image.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Aristotelia', // Replace with actual name
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C3D8F),
                    ),
                  ),
                  Text(
                    'Pallasidou', // Replace with actual surname
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C3D8F),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Email', // Replace with actual email
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Inter',
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'john.doe@example.com', // Replace with actual email
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C3D8F),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Date of Birth', // Replace with actual date of birth
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Inter',
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'October 30, 2000', // Replace with actual date of birth
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C3D8F),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Latest scan', // Replace with actual date of birth
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Inter',
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'April 24, 2024', // Replace with actual date of birth
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C3D8F),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ][currentPageIndex],
    );
  }
}

Widget _buildRoundedImage(String imageUrl) {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    width: 76,
    height: 76,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: Colors.green, width: 2),
      image: DecorationImage(
        image: NetworkImage(imageUrl),
        fit: BoxFit.cover,
      ),
    ),
  );
}

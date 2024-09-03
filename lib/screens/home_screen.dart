import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iderma/components/top_navigation_bar.dart';
import 'package:iderma/screens/analysis_screen.dart';
import 'package:iderma/screens/camera_screen.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

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
            padding: const EdgeInsets.all(0.0), // Remove padding
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.stretch, // Ensure full width
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 16, bottom: 32),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-photo/pretty-smiling-joyfully-female-with-fair-hair-dressed-casually-looking-with-satisfaction_176420-15187.jpg?t=st=1724964432~exp=1724968032~hmac=6be629637440c98198e632c38183b5109b2b752b14af50ebc0ab858e8930cc69&w=1380'),
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
                  padding: EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 20), // Use symmetric padding
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
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0), // Use only vertical padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.only(left: 16),
                        child: const Text(
                          'Nearby Doctors',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2C3D8F),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 100, // Adjust height as needed
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            _buildRoundedImage(
                                'https://cdn.whatclinic.com/thumbnails/313202893bbb746c/stefanoskintzoglou1500x310.jpg?width=174&height=232&background-color=0xffffff&operation=pad&float-x=0.5&float-y=0.5&rotate=0&crop_x=0.2258462&crop_y=0.09230769&crop_w=0.6807692&crop_h=0.9076923&hmac=ee2f4892b7e9295aa19504acf2ba0c51fc087e1a'),
                            _buildRoundedImage(
                                'https://cdn.doctoranytime.gr/profileimages/doctor_12a53f30-32fe-4ad4-ba3f-e0c8ea65574f.jpg'),
                            _buildRoundedImage(
                                'https://cdn.doctoranytime.gr/profileimages/7e485afd-954f-4ffb-b3d5-3e53d86f1c55.jpg'),
                            _buildRoundedImage(
                                'https://cdn.doctoranytime.gr/profileimages/doctor_b77568d6-f88c-4dfb-97a9-8393f3e26364.jpg'),
                            _buildRoundedImage(
                                'https://cdn.doctoranytime.gr/profileimages/d973df03-1fb4-4152-b3cc-dff37b0c79ea.jpg'),
                            _buildRoundedImage(
                                'https://cdn.doctoranytime.gr/profileimages/475c8a05-35e6-4f3b-aa66-8d8de02458e9.jpg'),
                            _buildRoundedImage(
                                'https://cdn.doctoranytime.gr/profileimages/bc534b8d-5f85-40e8-a5fb-36347e3380b6.webp'),
                            _buildRoundedImage(
                                'https://cdn.doctoranytime.gr/profileimages/doctor_bef6e494-845d-4051-ab50-47d5709348b2.jpg'),

                            _buildRoundedImage(
                                'https://cdn.doctoranytime.gr/profileimages/doctor_0f4456cb-f7b3-4cc8-b55e-f5debd531d94.webp'),

                            // Add more rounded images here
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.only(left: 16),
                        child: const Text(
                          'Fun Facts',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2C3D8F),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.only(left: 16),
                        child: const Text(
                          "Did you know that your skin is the largest organ of your body? An adult's skin can cover an area of around 22 square feet (2 square meters) on average.",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        /// Scan page
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0.0), // Remove padding
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.stretch, // Ensure full width
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CameraScreen()),
                    );
                    if (kDebugMode) {
                      print('Scan button tapped!');
                    }
                  },
                  child: Container(
                    color: const Color(0xFF2C3D8F),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 20),
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
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-photo/pretty-smiling-joyfully-female-with-fair-hair-dressed-casually-looking-with-satisfaction_176420-15187.jpg?t=st=1724964432~exp=1724968032~hmac=6be629637440c98198e632c38183b5109b2b752b14af50ebc0ab858e8930cc69&w=138'),
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

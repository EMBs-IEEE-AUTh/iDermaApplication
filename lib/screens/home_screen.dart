import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iderma/components/top_navigation_bar.dart';

import 'package:iderma/screens/camera_screen.dart';
import 'package:iderma/screens/doctor_profile_screen.dart';
import 'package:iderma/screens/doctors.dart';
import 'package:iderma/screens/profile_widget.dart';

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

  // List of facts as Dart objects
  final List<Map<String, dynamic>> skinData = [
    {
      "id": 1,
      "fact":
          "Psoriasis can speed up skin cell production. In psoriasis, skin cells multiply up to 10 times faster than normal, causing red, scaly patches to appear on the skin."
    },
    {
      "id": 2,
      "fact":
          "Vitiligo Isn’t Just a Loss of Pigment. Vitiligo, where patches of skin lose their color, is an autoimmune disorder where the body's immune system attacks its own pigment-producing cells."
    },
    {
      "id": 3,
      "fact":
          "Eczema Is Linked to the Immune System. Atopic dermatitis (eczema) is thought to be connected to an overactive immune response to environmental triggers."
    },
    {
      "id": 4,
      "fact":
          "Acne Isn’t Just for Teens. Over 40% of adults have acne, with women more likely to experience it than men, due to hormonal fluctuations."
    },
    {
      "id": 5,
      "fact":
          "Rosacea Can Be Triggered by Spicy Foods. Besides sun exposure and alcohol, spicy foods can trigger rosacea flare-ups in some individuals."
    },
    {
      "id": 6,
      "fact":
          "Shingles Is a Reawakening of Chickenpox. Shingles is caused by the varicella-zoster virus, the same virus that causes chickenpox. It can reactivate years later, causing painful blisters."
    },
    {
      "id": 7,
      "fact":
          "Athlete’s Foot is Contagious. Despite its name, athlete's foot isn’t just for athletes! It’s a fungal infection that can spread through direct contact or contaminated surfaces."
    },
    {
      "id": 8,
      "fact":
          "Melanoma Can Occur in Places Without Sun Exposure. Melanoma, the deadliest form of skin cancer, can appear on parts of the body that rarely see sunlight, like the soles of the feet or under nails."
    },
    {
      "id": 9,
      "fact":
          "Cold Weather Can Worsen Some Skin Conditions. Cold, dry air can exacerbate conditions like eczema, psoriasis, and rosacea, making skin more prone to flare-ups."
    },
    {
      "id": 10,
      "fact":
          "Acne Has a Psychological Impact. Studies have shown that severe acne is linked to anxiety, depression, and lower self-esteem due to its visible nature."
    },
    {
      "id": 11,
      "fact":
          "Sunscreen Should Be Applied Every 2 Hours. To effectively protect against UV rays, sunscreen needs to be reapplied every two hours or immediately after swimming or sweating."
    },
    {
      "id": 12,
      "fact":
          "Your Skin Is a Barrier and an Organ. The skin is the body's largest organ, covering an average of 21 square feet and weighing around 9 pounds."
    },
    {
      "id": 13,
      "fact":
          "Sunglasses Protect More Than Just Your Eyes. Wearing sunglasses protects the delicate skin around your eyes from UV damage and helps prevent wrinkles and cataracts."
    },
    {
      "id": 14,
      "fact":
          "Moisturizing Helps Your Skin Barrier. Moisturizers help strengthen the skin barrier, keeping moisture in and harmful pathogens out, reducing the risk of infections and dryness."
    },
    {
      "id": 15,
      "fact":
          "Dark Clothes Offer Better UV Protection. Dark or bright-colored clothing provides better UV protection than light-colored clothing. Tightly woven fabrics also offer more protection."
    },
    {
      "id": 16,
      "fact":
          "Vitamin C Helps Protect Against Sun Damage. Topical vitamin C can neutralize free radicals caused by UV exposure, reducing the risk of sun damage and skin aging."
    },
    {
      "id": 17,
      "fact":
          "Your Lips Can Get Sunburned Too. The skin on your lips is thin and lacks melanin, so they are more vulnerable to UV damage. Use lip balm with SPF to protect them."
    },
    {
      "id": 18,
      "fact":
          "The “ABCDE” Rule Helps Spot Skin Cancer. Dermatologists recommend checking moles for Asymmetry, Border irregularity, Color variation, Diameter over 6mm, and Evolving size, shape, or color."
    },
    {
      "id": 19,
      "fact":
          "Skin Regenerates Every 27 Days. Your skin is constantly renewing itself, shedding dead cells and forming new ones. This process helps repair minor damage and keep your skin healthy."
    },
    {
      "id": 20,
      "fact":
          "Antioxidants in Your Diet Protect Skin. Foods rich in antioxidants, like berries, nuts, and leafy greens, help fight free radicals and protect your skin from damage caused by pollution and UV rays."
    }
  ];

  late String randomFact;

  @override
  void initState() {
    super.initState();
    _generateRandomFact();
  }

  void _generateRandomFact() {
    final random = Random();
    final randomIndex = random.nextInt(skinData.length);
    setState(() {
      randomFact = skinData[randomIndex]['fact'];
    });
  }

  String _getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good morning';
    } else if (hour < 17) {
      return 'Good afternoon';
    } else {
      return 'Good evening';
    }
  }

  @override
  Widget build(BuildContext context) {
    final greeting = _getGreeting(); // Get greeting based on current time

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
            label: 'Doctors',
            icon: Icon(Icons.location_on),
            selectedIcon: Icon(Icons.location_on, color: Colors.white),
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
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, top: 16, bottom: 32),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-photo/pretty-smiling-joyfully-female-with-fair-hair-dressed-casually-looking-with-satisfaction_176420-15187.jpg?t=st=1724964432~exp=1724968032~hmac=6be629637440c98198e632c38183b5109b2b752b14af50ebc0ab858e8930cc69&w=1380'
                            // 'https://www.shutterstock.com/image-vector/vector-flat-illustration-grayscale-avatar-600nw-2281862025.jpg'
                            ),
                      ),
                      const SizedBox(width: 24),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            greeting, // Use runtime value here
                            style: const TextStyle(
                                fontSize: 24,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ),
                          const Text(
                            'Welcome to iDerma',
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
                          'Popular Doctors',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2C3D8F),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      GridView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                        ),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          final profiles = [
                            {
                              "imageUrl":
                                  "https://www.wakehealth.edu/-/media/wakeforest/global/system/person-images/s/sarah-lynn-taylor.jpg?mw=1200&hash=6727C197DE451F3A8AB65A62F2D96770",
                              "name": "Eleni Konstantinou",
                              "address": "Patr. Ioakeim 2, Thessaloniki",
                              "phone": "2315890942",
                              "rating": 5,
                              "bio":
                                  "Dr. Eleni Konstantinou is a specialized dermatologist with numerous distinctions in dermatology. She specializes in the treatment of acne and skin diseases using the latest technology."
                            },
                            {
                              "imageUrl":
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6qaqeM3M9K644SbMTimE-j8XcrxSd1Pk7Q86mpzogPqbSPGVoIyrKTp_8WJDq3mFSCVk&usqp=CAU",
                              "name": "Dimitra Lampiri",
                              "address": "Angelaki 25, Thessaloniki",
                              "phone": "6907929395",
                              "rating": 5,
                              "bio":
                                  "Dr. Dimitra Lampiri is known for her excellent work in dermatology, specializing in aesthetic procedures and preventive care."
                            },
                            {
                              "imageUrl":
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSycurtY0T1NCLO47a9nFo-ye0XgYzVlmwKT261YpZW_AfV2tpv9CMTtxxT1E8hr8lILis&usqp=CAU",
                              "name": "Athina Stratigou",
                              "address": "Tsimiski 90, Thessaloniki",
                              "phone": "2315564343",
                              "rating": 5,
                              "bio":
                                  "Dr. Athina Stratigou is recognized for her exceptional work in dermatology. She specializes in therapeutic methods for chronic skin conditions."
                            },
                            {
                              "imageUrl":
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7a-ubeltaw3nTa0y85XHuKwf9q0mRqox1pBoj0ceUpQe2XJVXmaKWiaJEZqIYnfONSZk&usqp=CAU",
                              "name": "Maria Samara",
                              "address": "Tsimiski 11, Thessaloniki",
                              "phone": "2310004343",
                              "rating": 4,
                              "bio":
                                  "Dr. Maria Samara specializes in dermatology with a focus on aesthetic interventions. She has extensive experience in anti-aging and skin restoration treatments."
                            }
                          ];

                          return ProfileWidget(
                            profile: profiles[index],
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DoctorProfileScreen(
                                    doctor: profiles[index],
                                  ),
                                ),
                              );
                            },
                          );
                        },
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
                        child: Text(
                          randomFact,
                          style: const TextStyle(
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
                      SizedBox(height: 0),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
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
                            'Let\'s make a Scan',
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
                            Icons.arrow_forward_ios_rounded,
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
        const ProfileListScreen()
      ][currentPageIndex],
    );
  }
}

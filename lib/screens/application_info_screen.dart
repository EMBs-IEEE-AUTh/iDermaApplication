import 'package:flutter/material.dart';
import 'package:iderma/components/top_navigation_bar.dart';

class ApplicationInformationScreen extends StatelessWidget {
  const ApplicationInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: const TopNavigationAppBar(),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'EMBS AUTh',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 5, 102, 180),
                      ),
                    ),
                    // Image.asset(
                    //   'https://dummyimage.com/40x40/000/fff', // Ensure the image is in your assets folder
                    //   height: 0,
                    // ),
                    Image.network(
                      'https://dummyimage.com/90x90/000/fff', // Ensure the image is in your assets folder
                      height: 60,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Application Information',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 9, 123, 216),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Name: iDerma',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Description: iDerma is an innovative app that utilizes advanced deep learning technology to accurately identify skin diseases. The app features an intuitive interface and provides users with detailed information about skin diseases and nearby healthcare professionals.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Features:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  '• Deep learning technology for accurate identification of skin diseases',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  '• Intuitive interface for easy navigation and use',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  '• Personal profile for tracking skin health and past diagnoses',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  '• Deep learning technology for accurate identification of skin diseases',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  '• Fun facts section with interesting information about skin diseases and skin health',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  '• Scan the image feature for instant skin disease recognition',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  '• Nearby doctors search feature for finding healthcare professionals specializing in dermatology',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  '• Detailed information about skin diseases and their symptoms, causes, and treatments',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Compatibility: iDerma is compatible with iOS and Android mobile devices.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Price: iDerma is available for free download on the App Store and Google Play Store. However, some features may require in-app purchases or subscription.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Developer: iDerma is developed by a team of expert deep learning engineers and dermatologists.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Privacy: iDerma is committed to protecting user privacy and does not collect any personal information without permission. All user data is stored securely and confidentially.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

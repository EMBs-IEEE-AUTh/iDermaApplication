import 'package:flutter/material.dart';
import 'package:iderma/components/top_navigation_bar.dart';

class AboutEmbScreen extends StatelessWidget {
  const AboutEmbScreen({super.key});

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
                      'EMBs IEEE AUTh',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                        color: Color(0xFF2C3D8F), // Set text color using Color class
                      ),
                    ),
                    Image.asset(
                      'assets/images/emb-sign.png',
                      height: 60,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'About us',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C3D8F),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'The EMB IEEE Student Chapter AUTH, Greece largest, promotes biomedical engineering among students from diverse backgrounds. We enhance engagement through lectures, workshops, hackathons, and competitions, bridging academia and industry, fostering networking, and introducing emerging technologies. Our mission is to connect students with the key people, information, and innovations in this rapidly growing field.',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Team Members',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C3D8F),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Board 2024/2025',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text('Nikolaos Trifon Papadopoulos',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text('Despoina Nteli',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text('Maria Nteli',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text('Georgios Koutalios',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text('Andreas Segani',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Members',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text('Aristotelis Pallasidis',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text('Andreas Segani',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text('Victoria Galanopoulou',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text('Evangelia Petraki',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text('Thanasis Papadopoulos',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text('Ioanna Vrachni',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text('Member'),
                const Text('Member'),
                const SizedBox(height: 20),
                const Text(
                  'Follow Us',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C3D8F),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.facebook),
                      onPressed: () {
                        // Add your Facebook URL here
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

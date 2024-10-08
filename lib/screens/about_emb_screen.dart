import 'package:flutter/material.dart';
import 'package:iderma/components/top_navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';

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
                        color: Color(
                            0xFF2C3D8F), // Set text color using Color class
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
                const Text(
                  'Nikolaos Trifon Papadopoulos',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  'Despoina Nteli',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  'Maria Nteli',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  'Georgios Koutalios',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  'Andreas Segani',
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
                const Text(
                  'Aristotelis Pallasidis',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  'Andreas Segani',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  'Evangelia Petraki',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  'Ioanna Vrachni',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  'Sofia Georgiou',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  'Giorgos Petalas',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  'Maria Simoglou',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  'Xristos Giannakopoulos',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  'Vera Salmatzidou',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  'Eleni Iatrelli',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  'Georgia Karapanagiotidou',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
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
                      onPressed: () async {
                        const url =
                            'https://www.facebook.com/embsauth'; // Replace with your Facebook URL
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_outward_sharp),
                      onPressed: () async {
                        const url =
                            'https://emb.web.auth.gr/el/'; // Replace with your Facebook URL
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
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

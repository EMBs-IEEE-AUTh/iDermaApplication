// import 'package:flutter/material.dart';

// class DoctorProfileScreen extends StatelessWidget {
//   final Map<String, dynamic> doctor;

//   const DoctorProfileScreen({super.key, required this.doctor});

//   @override
//   Widget build(BuildContext context) {
//     // Extract rating value from the profile data
//     final int rating = doctor['rating'] ?? 0;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(doctor['name'],
//             style: const TextStyle(color: Color(0xFF2C3D8F))),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CircleAvatar(
//               radius: 60,
//               backgroundImage: NetworkImage(doctor['imageUrl']),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               doctor['name'],
//               style: const TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF2C3D8F)),
//             ),
//             const SizedBox(height: 8),
//             // Display the rating using star icons
//             Row(
//               children: List.generate(5, (index) {
//                 return Icon(
//                   index < rating ? Icons.star : Icons.star_border,
//                   color: Colors.amber,
//                 );
//               }),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Address: ${doctor['address']}',
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontFamily: 'Inter',
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Phone: ${doctor['phone']}',
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontFamily: 'Inter',
//               ),
//             ),
//             const SizedBox(height: 16),
//             const Text(
//               'Biography:',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'Inter',
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               _getBiography(doctor['name']),
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontFamily: 'Inter',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method to get biography based on the doctor's name
//   String _getBiography(String name) {
//     switch (name) {
//       case 'Eleni Konstantinou':
//         return 'Dr. Eleni Konstantinou is a specialized dermatologist with numerous publications in her field. She has significant experience in clinical and surgical dermatology.';
//       case 'Nikolaos Michailidis':
//         return 'Dr. Nikolaos Michailidis has extensive experience in diagnosing and treating dermatological conditions, with an emphasis on surgical dermatology.';
//       case 'Georgios Papadopoulos':
//         return 'Dr. Georgios Papadopoulos is an experienced dermatologist specializing in the treatment of skin tumors and cosmetic procedures.';
//       case 'Maria Samara':
//         return 'Dr. Maria Samara is known for her specialization in the treatment of acne and rosacea, with an approach that combines medical and cosmetic practices.';
//       case 'Athina Stratigou':
//         return 'Dr. Athina Stratigou specializes in dermatology for localized skin conditions and the treatment of hyperpigmentation.';
//       case 'Sofia Mavridou':
//         return 'Dr. Sofia Mavridou is recognized for her work with skin allergies and dermatological conditions related to health.';
//       case 'Konstantinos Papadimitriou':
//         return 'Dr. Konstantinos Papadimitriou is a dermatologist with a focus on managing eczema and psoriasis.';
//       case 'Alexandros Koutras':
//         return 'Dr. Alexandros Koutras specializes in dermatology and surgical dermatology, with extensive experience in removing skin tumors.';
//       case 'Dimitra Lampiri':
//         return 'Dr. Dimitra Lampiri is a dermatologist specializing in therapeutic methods for combating skin infections.';
//       case 'Theodoros Chatzigeorgiou':
//         return 'Dr. Theodoros Chatzigeorgiou has extensive experience in clinical dermatology and cosmetic dermatology.';
//       case 'Eleni Georgiadou':
//         return 'Dr. Eleni Georgiadou is known for her specialization in surgical dermatology and enhancing skin health.';
//       default:
//         return 'No biography available.';
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DoctorProfileScreen extends StatelessWidget {
  final Map<String, dynamic> doctor;

  const DoctorProfileScreen({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    final int rating = doctor['rating'] ?? 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(doctor['name'],
            style: const TextStyle(
                color: Colors.white, fontFamily: 'Inter', fontSize: 20)),
        backgroundColor: const Color(0xFF2C3D8F),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.share, color: Colors.white),
            onPressed: () {
              // Share the doctor's profile
              final String text =
                  'Check out this dermatologist: ${doctor['name']}';
              launchUrl(Uri(scheme: 'sms', path: '', queryParameters: {
                'body': text,
              }));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(doctor['imageUrl']),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                doctor['name'],
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2C3D8F),
                ),
              ),
            ),
            const SizedBox(height: 6),
            const Center(
              child: Text(
                'Dermatologist',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 175, 175, 175),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Display the rating using star icons
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(5, (index) {
                  return Icon(
                    index < rating ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                    size: 30,
                  );
                }),
              ),
            ),
            const SizedBox(height: 16),
            // Card for contact details
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: Color(0xFF2C3D8F)),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            doctor['address'],
                            style: const TextStyle(
                                fontSize: 16, fontFamily: 'Inter'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.phone, color: Color(0xFF2C3D8F)),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            doctor['phone'],
                            style: const TextStyle(
                                fontSize: 16, fontFamily: 'Inter'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Biography section
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.info, color: Color(0xFF2C3D8F)),
                        SizedBox(width: 8),
                        Text(
                          'Biography:',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _getBiography(doctor['name']),
                      style: const TextStyle(fontSize: 16, fontFamily: 'Inter'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            // "Call Doctor" button
            Center(
              child: ElevatedButton.icon(
                onPressed: () => _callDoctor(doctor['phone']),
                icon: const Icon(Icons.call, color: Colors.white),
                label: const Text('Call Doctor',
                    style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2C3D8F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to call the doctor
  void _callDoctor(String phone) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phone);
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw 'Could not launch $phone';
    }
  }

  // Helper method to get biography based on the doctor's name
  String _getBiography(String name) {
    switch (name) {
      case 'Eleni Konstantinou':
        return 'Dr. Eleni Konstantinou is a specialized dermatologist with numerous publications in her field. She has significant experience in clinical and surgical dermatology.';
      case 'Nikolaos Michailidis':
        return 'Dr. Nikolaos Michailidis has extensive experience in diagnosing and treating dermatological conditions, with an emphasis on surgical dermatology.';
      case 'Georgios Papadopoulos':
        return 'Dr. Georgios Papadopoulos is an experienced dermatologist specializing in the treatment of skin tumors and cosmetic procedures.';
      case 'Maria Samara':
        return 'Dr. Maria Samara is known for her specialization in the treatment of acne and rosacea, with an approach that combines medical and cosmetic practices.';
      case 'Athina Stratigou':
        return 'Dr. Athina Stratigou specializes in dermatology for localized skin conditions and the treatment of hyperpigmentation.';
      case 'Sofia Mavridou':
        return 'Dr. Sofia Mavridou is recognized for her work with skin allergies and dermatological conditions related to health.';
      case 'Konstantinos Papadimitriou':
        return 'Dr. Konstantinos Papadimitriou is a dermatologist with a focus on managing eczema and psoriasis.';
      case 'Alexandros Koutras':
        return 'Dr. Alexandros Koutras specializes in dermatology and surgical dermatology, with extensive experience in removing skin tumors.';
      case 'Dimitra Lampiri':
        return 'Dr. Dimitra Lampiri is a dermatologist specializing in therapeutic methods for combating skin infections.';
      case 'Theodoros Chatzigeorgiou':
        return 'Dr. Theodoros Chatzigeorgiou has extensive experience in clinical dermatology and cosmetic dermatology.';
      case 'Eleni Georgiadou':
        return 'Dr. Eleni Georgiadou is known for her specialization in surgical dermatology and enhancing skin health.';
      default:
        return 'No biography available.';
    }
  }
}

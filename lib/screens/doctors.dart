import 'package:flutter/material.dart';
import 'package:iderma/screens/doctor_profile_screen.dart';

class ProfileListScreen extends StatelessWidget {
  const ProfileListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Dermatologist in Thessaloniki', textstyle: TextStyle(color: Colors.white)),
        title: const Text(
          'Dermatologist in Thessaloniki',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            color: Color(0xFF2C3D8F),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 16, bottom: 32),
        child: SingleChildScrollView(
          child: Column(
            children:
                List.generate(5, (index) => _buildProfileRow(context, index)),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileRow(BuildContext context, int index) {
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
            "https://mdxvitals-res.cloudinary.com/private_images/q_auto/professionals/1525368/photo.jpg",
        "name": "Nikolaos Michailidis",
        "address": "Leoforos Vasileos Georgiou 8, Thessaloniki",
        "phone": "2310669636",
        "rating": 3,
        "bio":
            "Dr. Nikolaos Michailidis is a dermatologist experienced in treating eczema and psoriasis. He specializes in modern diagnostic and treatment methods."
      },
      {
        "imageUrl":
            "https://mdxvitals-res.cloudinary.com/private_images/q_auto/professionals/1735007/photo.jpg",
        "name": "Georgios Papadopoulos",
        "address": "Agias Sofias 42, Thessaloniki",
        "phone": "2313330270",
        "rating": 4,
        "bio":
            "Dr. Georgios Papadopoulos is known for his expertise in treating acne and skin infections. He offers personalized care for each patient."
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
            "https://www.wakehealth.edu/-/media/wakeforest/global/system/person-images/a/amy-jo-mcmichael.jpg?mw=1200&hash=8652DBC13117C92CD85B79E91313126E",
        "name": "Sofia Mavridou",
        "address": "Egnatias 62, Thessaloniki",
        "phone": "2310286994",
        "rating": 4,
        "bio":
            "Dr. Sofia Mavridou is a specialized dermatologist focused on researching new treatments for skin diseases and using advanced technologies."
      },
      {
        "imageUrl":
            "https://files.blountmemorial.org/main_photos/doctors/609_Vines_David.jpg",
        "name": "Konstantinos Papadimitriou",
        "address": "I. Tsimiski 136, Thessaloniki",
        "phone": "2313114450",
        "rating": 2,
        "bio":
            "Dr. Konstantinos Papadimitriou specializes in managing skin infections and preventive skin care. He keeps up with the latest developments in the field."
      },
      {
        "imageUrl":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2VS_1glMBqrk-83fAgHOuI9xSFc8Z_EF_Krt1sWxWBUs6Eu7wSDtZcDisKIR7uLpH2Wo&usqp=CAU",
        "name": "Alexandros Koutras",
        "address": "Tsimiski 72, Thessaloniki",
        "phone": "2310222390",
        "rating": 3,
        "bio":
            "Dr. Alexandros Koutras is a dermatologist interested in therapeutic methods for skin conditions. He provides comprehensive care with a focus on counseling."
      },
      {
        "imageUrl":
            "https://www.stlukesonline.org/~/media/stlukes/provider%20images/turner-ryan-hs.jpg",
        "name": "Stefanos Alexiou",
        "address": "Chrys. Smyrnis 19, Thessaloniki",
        "phone": "2310755295",
        "rating": 2,
        "bio":
            "Dr. Stefanos Alexiou specializes in the prevention and treatment of skin diseases. He has extensive experience in skin problem restoration."
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
            "https://doximity-res.cloudinary.com/images/f_auto,q_auto,t_public_profile_photo_320x320/712f8943-18d5-4049-ab6e-349ed2516cbe/ryan-turner-md-new-york-ny.jpg",
        "name": "Theodoros Chatzigeorgiou",
        "address": "Tsimiski 42, Thessaloniki",
        "phone": "2310222452",
        "rating": 3,
        "bio":
            "Dr. Theodoros Chatzigeorgiou has extensive experience in diagnosing and treating skin diseases. He specializes in cosmetic dermatology and restoration."
      },
      {
        "imageUrl":
            "https://doximity-res.cloudinary.com/images/f_auto,q_auto,t_public_profile_photo_320x320/sy6o5tkbekdhexfdfsnl/mary-morrill-chuba-md-soquel-ca.jpg",
        "name": "Eleni Georgiadou",
        "address": "Tsimiski 30, Thessaloniki",
        "phone": "2310268929",
        "rating": 4,
        "bio":
            "Dr. Eleni Georgiadou is a dermatologist with a particular specialization in managing chronic skin conditions and using advanced technologies."
      }
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildProfileColumn(context, profiles[index * 2 % profiles.length]),
          const SizedBox(width: 16), // Add spacing between columns
          _buildProfileColumn(
              context, profiles[(index * 2 + 1) % profiles.length]),
        ],
      ),
    );
  }

  Widget _buildProfileColumn(
      BuildContext context, Map<String, dynamic> profile) {
    final int rating = profile['rating'] ?? 0;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DoctorProfileScreen(doctor: profile),
            ),
          );
        },
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align content to the left
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(profile['imageUrl']),
            ),
            const SizedBox(height: 8),
            Text(profile['name'],
                style: const TextStyle(
                  color: Color(0xFF2C3D8F),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter',
                )),
            const SizedBox(height: 4),
            // Display the rating using star icons
            Row(
              children: List.generate(5, (index) {
                return Icon(
                  index < rating ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                );
              }),
            ),
            // const SizedBox(height: 4),
            // Text(profile['address'],
            //     style: TextStyle(
            //       color: Colors.grey[600],
            //       fontFamily: 'Inter',
            //     )),
            const SizedBox(height: 4),
            Text(profile['phone'],
                style: const TextStyle(
                    fontFamily: 'Inter',
                    color: Color.fromARGB(255, 63, 63, 63),
                    fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            // Add biography
          ],
        ),
      ),
    );
  }
}

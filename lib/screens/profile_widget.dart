import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final Map<String, dynamic> profile;
  final VoidCallback onTap;

  const ProfileWidget({super.key, required this.profile, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final int rating = profile['rating'] ?? 0;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Row(
            children: List.generate(5, (index) {
              return Icon(
                index < rating ? Icons.star : Icons.star_border,
                color: Colors.amber,
              );
            }),
          ),
          const SizedBox(height: 4),
          Text(profile['phone'],
              style: const TextStyle(
                  fontFamily: 'Inter',
                  color: Color.fromARGB(255, 63, 63, 63),
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

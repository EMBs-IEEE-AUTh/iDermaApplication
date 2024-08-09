// Created by Aristotelis Pallasidis
import 'package:flutter/material.dart';
import 'package:iderma/screens/home_screen.dart';

class TopNavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopNavigationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'iDerma',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2C3D8F),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
}

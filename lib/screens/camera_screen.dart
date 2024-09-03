import 'dart:io';
import 'package:flutter/material.dart';
import 'package:iderma/components/top_navigation_bar.dart';
import 'package:iderma/screens/analysis_screen.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? _selectedImage;

  Future<void> _pickImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  Future<void> _pickImageFromCamera() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const TopNavigationAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              _selectedImage != null
                  ? Expanded(
                      child: Image.file(_selectedImage!),
                    )
                  : const Expanded(
                      child: Center(
                        child: Text("Please select or capture an image"),
                      ),
                    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: _pickImageFromGallery,
                    child: const Text(
                      "Image Gallery",
                      style: TextStyle(
                        color: Colors.blue, // Set text color to blue
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: _pickImageFromCamera,
                    child: const Text(
                      "Camera",
                      style: TextStyle(
                        color: Colors.red, // Set text color to red
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: _selectedImage != null
                    ? () {
                        // TODO: Upload image to Firebase Storage
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AnalysisScreen(),
                          ),
                        );
                      }
                    : null,
                child: Container(
                  color: _selectedImage != null
                      ? const Color.fromRGBO(44, 61, 143, 1)
                      : Colors.grey,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 20,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '>>>>>>>>',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 24,
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
    );
  }
}

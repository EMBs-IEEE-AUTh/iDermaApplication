import 'package:flutter/material.dart';
import 'package:iderma/components/top_navigation_bar.dart';

class HowTheModelWorksScreen extends StatelessWidget {
  const HowTheModelWorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          appBar: TopNavigationAppBar(),
          body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How the model works',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C3D8F),
                      ),
                    ),

                    SizedBox(height: 12),
                    Text(
                      'Our app offers an advanced image classification model specifically designed to accurately recognize 27 different skin diseases. Our deep learning model is trained on a vast and diverse dataset of skin images sourced from multiple trusted providers to ensure the highest level of accuracy and reliability.',
                      style: TextStyle(
                          fontSize: 16,
                          height: 1.8,
                          fontFamily: 'Inter',
                          color: Color(0xFF1A1A19),
                          fontWeight: FontWeight.w400),
                    ),

                    SizedBox(height: 12),
                    Text(
                      'With just a simple upload of an image of their skin, users can easily get an instant prediction of the most likely skin disease category that the image belongs to, along with a confidence score indicating the reliability of the prediction. Our app offers an intuitive user interface that provides detailed information about the predicted skin disease category, including symptoms, treatment options, and other relevant details.',
                      style: TextStyle(
                          fontSize: 16,
                          height: 1.8,
                          fontFamily: 'Inter',
                          color: Color(0xFF1A1A19),
                          fontWeight: FontWeight.w400),
                    ),
                    
                    SizedBox(height: 12),
                    Text(
                      'Our image classification model is constantly evolving and improving. We regularly update our deep learning algorithm with the latest data to ensure the highest level of accuracy and keep up with emerging skin diseases. Our app offers a reliable and convenient way for individuals to monitor their skin health and stay informed about potential skin diseases.',
                      style: TextStyle(
                          fontSize: 16,
                          height: 1.8,
                          fontFamily: 'Inter',
                          color: Color(0xFF1A1A19),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
          )),
    );
  }
}

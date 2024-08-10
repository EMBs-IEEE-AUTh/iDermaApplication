import 'package:flutter/material.dart';
import 'package:iderma/components/top_navigation_bar.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
        
//         appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text(
//               'iDerma',
//               style: TextStyle(
//                 fontSize: 36,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xFF2C3D8F), // Set text color using Color class
//               ),
//             ),
//             IconButton(
//               icon: const Icon(Icons.menu),
//               mouseCursor: MaterialStateMouseCursor.clickable,
//               onPressed: () {
//                 // Add your menu button functionality here
//               },
//             ),
//           ],
//         ),
//       ),

        
//         body: SingleChildScrollView(
//           child: Container(
//           padding: const EdgeInsets.fromLTRB(16, 25, 20, 20), // Adjusted padding
//           child: const Column(


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

            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              Text(
              'How the model works',
              style: TextStyle(
                fontSize: 28.0, 
                color: Color(0xFF2C3D8F), 
                fontWeight: FontWeight.bold,
                
                
                ),
            ),
            SizedBox(height: 10),
              Text (
                'Our app offers an advanced image classification model specifically designed to accurately recognize 27 different skin diseases. Our deep learning model is trained on a vast and diverse dataset of skin images sourced from multiple trusted providers to ensure the highest level of accuracy and reliability.',
              style: TextStyle(
                fontSize: 19, 
                height: 1.8 ,
                

                color: Color(0xFF1A1A19), 
                fontWeight: FontWeight.w400
                 
                
                ),
            ),
              SizedBox(height: 10),
              Text (
                'With just a simple upload of an image of their skin, users can easily get an instant prediction of the most likely skin disease category that the image belongs to, along with a confidence score indicating the reliability of the prediction. Our app offers an intuitive user interface that provides detailed information about the predicted skin disease category, including symptoms, treatment options, and other relevant details.',
              style: TextStyle(
                fontSize: 19.0, 
                height: 1.8 ,

                color: Color(0xFF1A1A19), 
                fontWeight: FontWeight.w400
                 
                
                ),
            ),
              SizedBox(height: 10),
              Text (
                'Our image classification model is constantly evolving and improving. We regularly update our deep learning algorithm with the latest data to ensure the highest level of accuracy and keep up with emerging skin diseases. Our app offers a reliable and convenient way for individuals to monitor their skin health and stay informed about potential skin diseases.',
              style: TextStyle(
                fontSize: 19.0, 
                height: 1.8 ,

                color: Color(0xFF1A1A19), 
                fontWeight: FontWeight.w400
                 
                
                ),
            ),

            
            SizedBox(height: 20),

            // Container(
            //   height: 82,
            //   decoration: BoxDecoration(
            //     color: Color(0xFFD9D9D9),


            //     borderRadius: BorderRadius.circular(10.0),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center
            //     ,
            //     children: [
            //       IconButton(
            //       onPressed: (){}, 
            //         icon: const Icon(
            //         Icons.home,
            //         color: Color(0xFF2C3D8F),
            //         size: 50.0,
            //         )
            //         ),
            //          const SizedBox(
            //           width: 40,
            //         ),
            //       IconButton(
            //       onPressed: (){}, 
            //         icon: const Icon(
            //         Icons.person,
            //         color: Color(0xFF2C3D8F),
            //         size: 60.0,
            //         )
            //         ),
            //         const SizedBox(
            //           width: 40,

            //         ),
            //         IconButton(
            //       onPressed: (){}, 
            //         icon: const Icon(
            //         Icons.bar_chart,
            //         color: Color(0xFF2C3D8F),
            //         size: 50.0,

            //         )
            //         )
            //     ],
            //   ) ,


            // ), 
            

            ],
          ) 
          
          
            
          
        ),
        ) 
        
      ),
    );
  }
}





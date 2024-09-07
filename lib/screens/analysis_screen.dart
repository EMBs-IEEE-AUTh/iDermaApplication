import 'package:flutter/material.dart';

import 'package:iderma/screens/result_screen.dart';
// Make sure to import your new screen

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Align the title to the top-left
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(16.0), // Adjust padding as needed
              child: Text(
                'iDerma',
                style: TextStyle(
                  color: Color.fromRGBO(44, 61, 143, 1),
                  fontSize: 36.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          // Rest of your UI
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                  height:
                      150), // Adjust height to account for the title's position
              const Text(
                'Please',
                style: TextStyle(
                  color: Color.fromRGBO(44, 61, 143, 1),
                  fontFamily: 'Inter',
                  fontSize: 26.0,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Wait for the results',
                style: TextStyle(
                  color: Color.fromRGBO(44, 61, 143, 1),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w800,
                  fontSize: 26,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 100),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Fun Facts',
                    style: TextStyle(
                      color: Color.fromRGBO(44, 61, 143, 1),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Our heart beats around 100,000 times every day or about 30 million times in a year.',
                  style: TextStyle(
                    color: Color.fromRGBO(44, 61, 143, 1),
                    fontFamily: 'Inter',
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 180),
              const Text(
                'Your results are ready!',
                style: TextStyle(
                  color: Color.fromRGBO(44, 61, 143, 1),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w800,
                  fontSize: 27,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ResultScreen()), // Navigate to the new screen
                  );
                },
                child: Container(
                  color: const Color.fromRGBO(44, 61, 143, 1),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class ResultScreen extends StatelessWidget {
//   const ResultScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(100), // Height of the app bar
//         child: Container(
//           color: Color.fromRGBO(44, 61, 143, 1),
//           child: Stack(
//             clipBehavior: Clip.none,
//             children: <Widget>[
//               Positioned(
//                 top: 20,
//                 left: 16,
//                 child: Text(
//                   'iDerma',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 36,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: 25,
//                 right: 10,
//                 child: TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text(
//                     'Back',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontFamily: 'Poppins',
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Text(
//               'Results',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 20,
//                 fontWeight: FontWeight.w800,
//                 color: Color.fromRGBO(44, 61, 143, 1),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: Text(
//               "Disease:",
//               style: TextStyle(
//                 color: Color.fromRGBO(44, 61, 143, 1),
//                 fontFamily: 'Poppins',
//                 fontSize: 20,
//                 fontWeight: FontWeight.w800,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: Text(
//               "Dyshidrotic eczema treatment",
//               style: TextStyle(
//                 color: Color.fromRGBO(44, 61, 143, 1),
//                 fontFamily: 'Poppins',
//                 fontSize: 20,
//               ),
//             ),
//           ),
//           Padding(
//             padding:
//                 const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//             child: Text(
//               "Treatment:",
//               style: TextStyle(
//                 color: Color.fromRGBO(44, 61, 143, 1),
//                 fontFamily: 'Poppins',
//                 fontSize: 20,
//                 fontWeight: FontWeight.w800,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: Text(
//               '''Moisturizing lotion or cream. This helps\ntreat dry skin.\nSteroid ointment. This can reduce\ninflammation.\nCalcineurin creams.\nSteroid medicines taken by mouth (oral).\nDraining of very large blisters.\nTreatment with psoralen and ultraviolet\nlight (PUVA).\nOther medicines.''',
//               style: TextStyle(
//                 color: Color.fromRGBO(44, 61, 143, 1),
//                 fontFamily: 'Poppins',
//                 fontSize: 16,
//               ),
//             ),
//           ),
//           Spacer(),
//           SizedBox(
//             height: 80,
//           ),
//           Container(
//             color: Color.fromRGBO(44, 61, 143, 1),
//             padding: EdgeInsets.symmetric(vertical: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 25),
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>
//                                 HomePageScreen()), // Navigate to the homepage
//                       );
//                     },
//                     child: Text(
//                       '''Back to\nHomepage\nLet\'s find you a doctor''',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 20),
//                   child: Text(
//                     '>>>>>>>>',
//                     style: TextStyle(fontSize: 24, color: Colors.white),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // SizedBox(height: 10), // Add some space below the button
//         ],
//       ),
//     );
//   }
// }

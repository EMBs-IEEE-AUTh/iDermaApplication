import 'package:flutter/material.dart';
import 'package:iderma/screens/home_screen.dart';

class ResultScreen extends StatelessWidget {
  final String? result; // Accept the result as a parameter

  const ResultScreen({super.key, this.result});

  // Method to format or modify the response text
  String formatResponse(String? response) {
    if (response == null || response.isEmpty) {
      return "No results available";
    }

    // Remove unwanted characters: {}, :, [, ], and the word "top_5_diseases"
    String cleanedResponse = response
        .replaceAll(RegExp(r'[{}\[\]:]'), '') // Remove {, }, [, ], and :
        .replaceAll("Top_5_diseases", ''); // Remove "Top_5_diseases"

    // Extract text inside quotes
    final matches = RegExp(r'"([^"]+)"').allMatches(cleanedResponse);
    List<String> formattedResults = matches.map((match) {
      String text = match.group(1) ?? "";
      // Capitalize each word in the text
      String capitalizedText = text
          .split(' ')
          .map(
              (word) => word[0].toUpperCase() + word.substring(1).toLowerCase())
          .join(' ');
      return capitalizedText; // Do not add bullet point here
    }).toList();

    // Format results
    if (formattedResults.isNotEmpty) {
      // The first result without a bullet point
      String formattedResponse = formattedResults[0];

      // Add bullet points to the remaining results
      if (formattedResults.length > 1) {
        formattedResponse += formattedResults
            .skip(1)
            .map((result) =>
                '\n• $result') // Add bullet points to the remaining results
            .join();
      }

      return formattedResponse;
    } else {
      return "No results available";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            Positioned(
              top: 40,
              left: 16,
              child: Text(
                'iDerma',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2C3D8F),
                ),
              ),
            ),
            // Positioned(
            //   top: 35,
            //   right: 10,
            //   child: TextButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => const HomePageScreen(),
            //         ),
            //       );
            //     },
            //     child: const Text(
            //       'Back',
            //       style: TextStyle(
            //         fontSize: 20,
            //         fontFamily: 'Inter',
            //         color: Color.fromRGBO(44, 61, 143, 1),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Top 5 Possible Diseases',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 34,
                fontWeight: FontWeight.w800,
                color: Color.fromRGBO(44, 61, 143, 1),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              formatResponse(result) ?? "No results available",
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Spacer(),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePageScreen(),
                ),
              );
            },
            child: Container(
              color: const Color.fromRGBO(44, 61, 143, 1),
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The result may not be entirely \naccurate, so always consult a \ndoctor for the definitive answer.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            decorationColor: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Back to Homepage',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 35),
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
          // Add some space below the button
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iderma/screens/home_screen.dart';
// Import your homepage widget

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80), // Height of the app bar
        child: Container(
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              const Positioned(
                top: 20,
                left: 16,
                child: Text(
                  'iDerma',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(44, 61, 143, 1),
                  ),
                ),
              ),
              Positioned(
                top: 25,
                right: 10,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const HomePageScreen(), // Navigate to the homepage
                      ),
                    );
                  },
                  child: const Text(
                    'Back',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                      color: Color.fromRGBO(44, 61, 143, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Results',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Color.fromRGBO(44, 61, 143, 1),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Disease:",
              style: TextStyle(
                color: Color.fromRGBO(44, 61, 143, 1),
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Dyshidrotic eczema treatment",
              style: TextStyle(
                color: Color.fromRGBO(44, 61, 143, 1),
                fontFamily: 'Inter',
                fontSize: 20,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              "Treatment:",
              style: TextStyle(
                color: Color.fromRGBO(44, 61, 143, 1),
                fontFamily: 'Inter',
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              '''Moisturizing lotion or cream. This helps\ntreat dry skin.\nSteroid ointment. This can reduce\ninflammation.\nCalcineurin creams.\nSteroid medicines taken by mouth (oral).\nDraining of very large blisters.\nTreatment with psoralen and ultraviolet\nlight (PUVA).\nOther medicines.''',
              style: TextStyle(
                color: Color.fromRGBO(44, 61, 143, 1),
                fontFamily: 'Inter',
                fontSize: 16,
              ),
            ),
          ),
          const Spacer(),
          const SizedBox(
            height: 95,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const HomePageScreen(), // Navigate to the homepage
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
                    padding: EdgeInsets.only(left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Back to\nHomepage',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Let\'s find you a doctor',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Inter',
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      '>>>>>>>>',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Inter',
                          color: Colors.white),
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

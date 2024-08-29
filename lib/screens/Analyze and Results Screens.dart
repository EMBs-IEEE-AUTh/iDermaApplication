// ignore_for_file: prefer_const_constructors
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: AnalizeScreen(),
    title: 'iDerma',
  ));
}

class AnalizeScreen extends StatelessWidget {
  const AnalizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0,
          backgroundColor: Color.fromRGBO(44, 61, 143, 1),
          clipBehavior: Clip.none,
          title: const Text('iDerma'),
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 36.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 137.0, top: 20),
              child: AppBar(
                title: const Text('Please'),
                titleTextStyle: TextStyle(
                  color: Color.fromRGBO(44, 61, 143, 1),
                  fontFamily: 'Poppins',
                  fontSize: 26.0,
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 53.0),
                child: AppBar(
                  title: const Text('Wait for the results'),
                  titleTextStyle: TextStyle(
                    color: Color.fromRGBO(44, 61, 143, 1),
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w800,
                    fontSize: 26,
                  ),
                )),
            Column(
              // The Fun Fact
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Padding>[
                Padding(
                  padding: EdgeInsets.only(left: 39, top: 100),
                  child: AppBar(
                    title: const Text('Fun Facts'),
                    titleTextStyle: TextStyle(
                      color: Color.fromRGBO(44, 61, 143, 1),
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 39),
                  child: AppBar(
                    toolbarHeight: 60,
                    title: const Text(
                      'Our heart beats around 100,00 times every day or about 30 million times in a year.',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    titleTextStyle: TextStyle(
                      color: Color.fromRGBO(44, 61, 143, 1),
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
            Container(
              // Text

              padding: EdgeInsets.only(top: 150, left: 66),
              child: AppBar(
                title: const Text('They are Ready!!!'),
                titleTextStyle: TextStyle(
                  color: Color.fromRGBO(44, 61, 143, 1),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  fontSize: 27,
                ),
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50),
                  height: 187.5,
                  child: AppBar(
                    title: const Text('Continue'),
                    backgroundColor: Color.fromRGBO(44, 61, 143, 1),
                    titleTextStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Positioned(
                  top: 62,
                  right: 10,
                  child: Text(
                    '>>>>>>>>',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.black.withOpacity(0.00001)),
                      foregroundColor: MaterialStateProperty.all(
                          Colors.black.withOpacity(0.00001)),
                      shadowColor: MaterialStateProperty.all(
                          Colors.black.withOpacity(0.00001)),
                      overlayColor: MaterialStateProperty.all(
                          Colors.black.withOpacity(0.00001)),
                      surfaceTintColor: MaterialStateProperty.all(
                          Colors.black.withOpacity(0.00001)),
                      iconColor: MaterialStateProperty.all(
                          Colors.black.withOpacity(0.00001))),
                  child: SizedBox(height: 187, width: 360),
                ),
              ],
            ),
          ],
        ));
  }
}

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(360, 100),
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                color: Color.fromRGBO(44, 61, 143, 1),
              ),
              Positioned(
                top: 75,
                left: 16,
                child: Text(
                  'iDerma',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
              Positioned(
                top: 77,
                right: 10,
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Back',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          color: Colors.white),
                    )),
              )
            ],
          ),
        ),
        body: Stack(clipBehavior: Clip.none, children: [
          const Positioned(
              top: 25,
              left: 20,
              child: Text(
                'Results',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(44, 61, 143, 1)),
              )),
          const Positioned(
              top: 95,
              left: 20,
              child: Text(
                "Disease:",
                style: TextStyle(
                    color: Color.fromRGBO(44, 61, 143, 1),
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              )),
          const Positioned(
              top: 125,
              left: 20,
              child: Text(
                "Dyshidrotic eczema treatment",
                style: TextStyle(
                  color: Color.fromRGBO(44, 61, 143, 1),
                  fontFamily: 'Poppins',
                  fontSize: 20,
                ),
              )),
          const Positioned(
              top: 195,
              left: 20,
              child: Text(
                "Treatment:",
                style: TextStyle(
                    color: Color.fromRGBO(44, 61, 143, 1),
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              )),
          const Positioned(
              top: 225,
              left: 20,
              child: Text(
                '''Moisturizing lotion or cream. This helps\ntreat dry skin.\nSteroid ointment. This can reduce\ninflammation.\nCalcineurin creams.\nSteroid medicines taken by mouth (oral).\nDraining of very large blisters.\nTreatment with psoralen and ultraviolet\nlight (PUVA).\nOther medicines.''',
                style: TextStyle(
                  color: Color.fromRGBO(44, 61, 143, 1),
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              )),
          const Positioned(
              top: 580,
              child: SizedBox(
                height: 180,
                width: 500,
                child: ColoredBox(color: Color.fromRGBO(44, 61, 143, 1)),
              )),
          Positioned(
              top: 600,
              left: 25,
              child: Text(
                '''Back to\nHomepage''',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              )),
          Positioned(
            top: 600,
            right: 20,
            child: Text(
              '>>>>>>>>',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          Positioned(
              top: 675,
              left: 15,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Let\'s find you a doctor',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                  ),
                ),
              )),
          Positioned(
            top: 580,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: LinearBorder(),
                backgroundColor: Colors.black.withOpacity(0.00001),
                foregroundColor: Colors.black.withOpacity(0.00001),
                shadowColor: Colors.black.withOpacity(0.00001),
                surfaceTintColor: Colors.black.withOpacity(0.00001),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: SizedBox(
                width: 450,
                height: 100,
              ),
            ),
          )
        ]));
  }
}

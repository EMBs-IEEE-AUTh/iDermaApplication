import 'package:flutter/material.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
          DoctorProfile(),
        ]),
      ),
    );
  }
}

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 360,
                  height: 100,
                  color: const Color(0xFFD9D9D9),
                ),
              ),
              Container(
                width: 360,
                height: 204,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: const Alignment(0.0, 50.0 / 134.0),
                    colors: [
                      const Color(0xFF2C3D8F),
                      const Color(0xFF2C3D8F).withOpacity(0.9),
                    ],
                    stops: const [0, 0.4],
                  ),
                ),
              ),
              Positioned(
                left: 232.02,
                top: 735.96,
                child: SizedBox(
                  width: 44.77,
                  height: 47.27,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 44.77,
                          height: 47.27,
                          decoration: ShapeDecoration(
                            color: const Color.fromARGB(255, 247, 244, 244),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x29000000),
                                blurRadius: 3,
                                offset: Offset(0, 3),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned.fill(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x29000000),
                                        blurRadius: 3,
                                        offset: Offset(0, 3),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 12.0,
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                  child: const Icon(
                                    Icons.stacked_bar_chart_rounded,
                                    size: 20.0,
                                    color: Color(0xFF2C3D8F),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11.08,
                        top: 11.12,
                        child: Container(
                          width: 22.61,
                          height: 24.57,
                          child: const Stack(children: []),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 158.01,
                top: 735.96,
                child: Container(
                  width: 44.77,
                  height: 47.27,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 44.77,
                          height: 47.27,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x29000000),
                                blurRadius: 3,
                                offset: Offset(0, 3),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned.fill(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x29000000),
                                        blurRadius: 3,
                                        offset: Offset(0, 3),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 12.0,
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 249, 249, 249),
                                  ),
                                  child: const Icon(
                                    Icons.person,
                                    size: 20.0,
                                    color: Color(0xFF2C3D8F),
                                  ),
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
              Positioned(
                left: 84,
                top: 735,
                child: Container(
                  width: 44.77,
                  height: 47.27,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 44.77,
                          height: 47.27,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x29000000),
                                blurRadius: 3,
                                offset: Offset(0, 3),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned.fill(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x29000000),
                                        blurRadius: 3,
                                        offset: Offset(0, 3),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 12.0,
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: const Icon(
                                    Icons.home,
                                    size: 20.0,
                                    color: Color(0xFF2C3D8F),
                                  ),
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
              Positioned(
                left: 127,
                top: 263,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 100,
                      height: 26,
                      child: Text(
                        'Dr. Boulidis',
                        style: TextStyle(
                          color: Color(0xFF2C3D8F),
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w900,
                          height: 0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 0.5),
                    Container(
                      width: 100,
                      height: 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF2C3D8F),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 100,
                          height: 1,
                          color: const Color(0xFF2C3D8F),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                left: 120,
                top: 367,
                child: SizedBox(
                  width: 134,
                  height: 18,
                  child: Text(
                    'Boulidis@gmail.com',
                    style: TextStyle(
                      color: Color(0xFF2C3D8F),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 121,
                top: 298,
                child: SizedBox(
                  width: 107,
                  height: 35,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Occupation \n',
                          style: TextStyle(
                            color: Color(0xFF2C3D8F),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'Dermatologist',
                          style: TextStyle(
                            color: Color(0xFF2C3D8F),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                left: 123,
                top: 347,
                child: Container(
                  width: 107,
                  height: 18,
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 107,
                        height: 18,
                        child: Text(
                          'Email Address',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF2C3D8F),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 150,
                top: 438,
                child: SizedBox(
                  width: 78,
                  height: 18,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '9:00- 17:00',
                          style: TextStyle(
                            color: Color(0xFF2C3D8F),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 150,
                top: 454,
                child: SizedBox(
                  width: 78,
                  height: 17,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '9:00- 17:00',
                          style: TextStyle(
                            color: Color(0xFF2C3D8F),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 150,
                top: 470,
                child: SizedBox(
                  width: 78,
                  height: 17,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '9:00- 17:00',
                          style: TextStyle(
                            color: Color(0xFF2C3D8F),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 150,
                top: 488,
                child: SizedBox(
                  width: 78,
                  height: 18,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '9:00- 17:00',
                          style: TextStyle(
                            color: Color(0xFF2C3D8F),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 180,
                top: 531,
                child: SizedBox(
                  width: 626,
                  height: 17,
                  child: Text(
                    "xxx xxx xxxx",
                    style: TextStyle(
                      color: Color(0xFF2C3D8F),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 150,
                top: 505,
                child: SizedBox(
                  width: 78,
                  height: 17,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '9:00- 17:00',
                          style: TextStyle(
                            color: Color(0xFF2C3D8F),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 598.40,
                child: Container(
                  width: 300,
                  height: 61.73,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 300,
                        height: 61.73,
                        decoration: BoxDecoration(
                          color: const Color(0xFF2C3D8F),
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      const Positioned(
                        left: 29,
                        top: 19.60,
                        child: SizedBox(
                          width: 200.73,
                          height: 28.94,
                          child: Text(
                            'Press to make a new Scan...',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.5,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 130,
                top: 412,
                child: SizedBox(
                  width: 100,
                  height: 17,
                  child: Text(
                    'Available Hours',
                    style: TextStyle(
                      color: Color(0xFF2C3D8F),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 130,
                top: 531,
                child: SizedBox(
                  width: 44,
                  height: 17,
                  child: Text(
                    'Phone: ',
                    style: TextStyle(
                      color: Color(0xFF2C3D8F),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 128,
                top: 134,
                child: Container(
                  width: 100,
                  height: 107,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/voulidaros.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const Positioned(
                left: 29,
                top: 34,
                child: SizedBox(
                  width: 167,
                  height: 43,
                  child: Text(
                    'iDerma',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 320,
                top: 50,
                child: Container(
                  width: 18.81,
                  height: 18,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 18.81,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.5,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 7.31,
                        child: Container(
                          width: 18.81,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.5,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 14.62,
                        child: Container(
                          width: 13.00,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.5,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

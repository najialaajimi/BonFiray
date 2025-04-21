import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'LoginPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(top: 200, bottom: 15),
          //   child: Container(
          //     // alignment: Alignment.center,
          //     child: RichText(
          //       overflow: TextOverflow.visible,
          //       textAlign: TextAlign.center,
          //       text: TextSpan(
          //           style: TextStyle(
          //             height: 1.171875,
          //             fontSize: 40.0,
          //             fontFamily: 'Roboto',
          //             fontWeight: FontWeight.w700,
          //             color: Color.fromARGB(255, 40, 60, 35),
          //           ),
          //           children: [
          //             TextSpan(
          //               text: '''Bon
          //      ''',
          //               style: GoogleFonts.salsa(
          //                   fontSize: 55.0,
          //                   fontWeight: FontWeight.w400,
          //                   color: Colors.black

          //                   /* letterSpacing: null, */
          //                   ),
          //             ),
          //             // GoogleFonts.salsa(color: Colors.black, fontSize: 30),
          //             TextSpan(
          //               text: '''Firay''',
          //               style: GoogleFonts.salsa(
          //                 fontSize: 55.0,
          //                 fontWeight: FontWeight.w400,
          //                 color: Color.fromARGB(255, 215, 16, 16),

          //                 /* letterSpacing: null, */
          //               ),
          //             )
          //           ]),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 270, left: 50, bottom: 35),
            child: Container(
              child: Image.asset("assets/logobonfirayred.png",
                  width: 300, height: 300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Container(
              child: Text(
                "Votre bazar de piéces auto",
                style: GoogleFonts.roboto(
                    fontSize: 24,
                    color: Color(0xFFD71010),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          // CircularProgressIndicator(),
        ],
      ),
    );
  }
}

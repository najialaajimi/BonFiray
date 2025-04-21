import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text(
              " Bienvenue !",
              style: GoogleFonts.salsa(color: Colors.white, fontSize: 45),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Center(
          //   child: Text(
          //     "Welcome back !",
          //     style: TextStyle(color: Colors.white, fontSize: 18),
          //   ),
          // )
        ],
      ),
    );
  }
}

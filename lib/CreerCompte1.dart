import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'CreerCompte.dart';
import 'Header.dart';
import 'LoginPage.dart';

class CreerCompte1 extends StatefulWidget {
  @override
  State<CreerCompte1> createState() => _CreerCompte1State();
}

class _CreerCompte1State extends State<CreerCompte1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Color(0xFFd71010),
            Color(0xFFd71010),
            Color(0xFFd71010),
          ]),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Header(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0),
                    ),
                    Center(
                      child: Text(
                        "Créer un compte",
                        style: GoogleFonts.salsa(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 19),
                      child: Text(
                        "Ecrire votre email :",
                        style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: TextField(
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Email ",
                            hintStyle: GoogleFonts.roboto(
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 1,
                                  style: BorderStyle.solid,
                                  color: Colors.black),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 12)),
                        Container(
                          child: Container(
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              color: Color(0xFFd71010),
                              padding: EdgeInsets.only(
                                  left: 40, right: 40, top: 15, bottom: 15),
                              child: Text("Précedent",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  )),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Container(
                          child: Container(
                            child: RaisedButton(
                              onPressed: () {},
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              color: Color(0xFFd71010),
                              padding: EdgeInsets.only(
                                  left: 50, right: 50, top: 15, bottom: 15),
                              child: Text("Renvoyer",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Container(
                    //   padding: const EdgeInsets.symmetric(
                    //       vertical: 5, horizontal: 70),
                    //   child: Container(
                    //     child: RaisedButton(
                    //       onPressed: () {},
                    //       elevation: 5,
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(40),
                    //       ),
                    //       color: Color(0xFFd71010),
                    //       padding: EdgeInsets.all(15),
                    //       child: Text("Renvoyer",
                    //           style: GoogleFonts.roboto(
                    //             fontWeight: FontWeight.bold,
                    //             color: Colors.white,
                    //             fontSize: 20,
                    //           )),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

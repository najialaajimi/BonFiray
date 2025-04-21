import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'CreerCompte.dart';
import 'CreerCompte3.dart';
import 'CreerCompte4.dart';
import 'Header.dart';

class CreerCompte2 extends StatefulWidget {
  const CreerCompte2({Key? key, required this.num}) : super(key: key);
  final String num;
  @override
  State<CreerCompte2> createState() => _CreerCompte2State();
}

class _CreerCompte2State extends State<CreerCompte2> {
  late String code;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController num = TextEditingController();

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
                    Text(
                      "Créer un compte",
                      style: GoogleFonts.salsa(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        "${widget.num} ",
                        style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Un code de vérification a été envoyer a votre numéro de téléphone",
                        style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        "Code de vérification",
                        style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Container(
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: "******",
                                  hintStyle: GoogleFonts.roboto(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                    borderSide: BorderSide(
                                        width: 1,
                                        style: BorderStyle.solid,
                                        color: Colors.black),
                                  ),
                                ),
                                validator: (String? value) {
                                  if (value!.isEmpty && value != null) {
                                    return "s'il vous plaît ecricre votre code de confirmation";
                                  }
                                  if (!RegExp(r"^[0-9]{6}$").hasMatch(value)) {
                                    return "entrer un numéro de téléhpne valide";
                                  }
                                  return null;
                                },
                                onSaved: (String? value) {
                                  code = value!;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Le code n'est pas récu ?",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Renvoyer",
                                style: TextStyle(
                                    color: Color(0xFFEE970B), fontSize: 16),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
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
                                        builder: (context) => CreerCompte()));
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
                        Padding(padding: EdgeInsets.only(left: 20)),
                        Container(
                          child: Container(
                            child: RaisedButton(
                              onPressed: () {
                                final Form = _formkey.currentState!;
                                if (Form.validate()) {
                                  Form.save();

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CreerCompte3()));
                                }
                              },
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              color: Color(0xFFd71010),
                              padding: EdgeInsets.only(
                                  left: 55, right: 55, top: 15, bottom: 15),
                              child: Text("Suivant",
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

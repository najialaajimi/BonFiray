import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:pfeproject/CreerCompte3.dart';
// import 'package:pfeproject/Components/crud.dart';
import 'CreerCompte1.dart';
import 'CreerCompte2.dart';
import 'LoginPage.dart';
import 'Header.dart';

import 'package:shared_preferences/shared_preferences.dart';

// import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CreerCompte extends StatefulWidget {
  const CreerCompte({Key? key}) : super(key: key);
  @override
  State<CreerCompte> createState() => _CreerCompteState();
}

class _CreerCompteState extends State<CreerCompte> {
  late String numTel;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController num = TextEditingController();

  void getpre() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('num', numTel);
  }

  // late String response;

  // crud Crud = crud();

  // signup() async {
  //   var response =
  //       await Crud.postRequest("http://10.0.2.2/BonFiray/singup.php", {
  //     "numtel": numtel.text,
  //   });
  //   if (response == "succes") {
  //     print("singup success");

  //     // Navigator.push(
  //     //     context, MaterialPageRoute(builder: (context) => CreerCompte2()));
  //   } else {
  //     print("singup failed");
  //   }
  // }

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
                      height: 20,
                    ),

                    // Container(
                    //   child: Stack(
                    //     children: [
                    //       InternationalPhoneNumberInput(
                    //         onInputChanged: (PhoneNumber number) {
                    //           print(number.phoneNumber);
                    //         },
                    //         onInputValidated: (bool value) {
                    //           print(value);
                    //         },
                    //         selectorConfig: SelectorConfig(
                    //           selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),

                    Container(
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              child: TextFormField(
                                controller: num,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  hintText: "Numéro de téléphone ",
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
                                    return "s'il vous plaît ecricre votre numéro de téléphone";
                                  }
                                  if (!RegExp(r"^[0-9]{8}$").hasMatch(value)) {
                                    return "entrer un numéro de téléhpne valide";
                                  }
                                  return null;
                                },
                                onSaved: (String? value) {
                                  numTel = value!;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 70),
                      child: Container(
                        child: RaisedButton(
                          onPressed: () async {
                            // await signup()

                            final Form = _formkey.currentState!;
                            if (Form.validate()) {
                              Form.save();
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((context) => CreerCompte2(
                                        num: num.text,
                                      ))));
                              await getpre;
                            }
                          },
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          color: Color(0xFFd71010),
                          padding: EdgeInsets.all(15),
                          child: Text("Envoyer",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 130,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Avez-vous un compte ?",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              child: Text(
                                "S'identifier",
                                style: TextStyle(
                                    color: Color(0xFFEE970B), fontSize: 16),
                              )),
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

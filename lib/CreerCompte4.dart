// import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:pfeproject/Components/Crud.dart';
import 'package:pfeproject/LoginPage.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'CreerCompte3.dart';
import 'Header.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CreeCompte4 extends StatefulWidget {
  @override
  State<CreeCompte4> createState() => _CreeCompte4State();
}

class _CreeCompte4State extends State<CreeCompte4> {
  final items = ["Particulier", "Garagiste", "Feraieur"];
  String? value;

  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  // crud Crud = crud();
  // singup() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   var response = await Crud.postRequest("http://10.0.2.2/pfe/Singup.php", {
  //     "confirmpassword": confirmpassword.text,
  //     "pass": password.text,
  //   });
  //   final counter = prefs.getString('id');
  //   final counter1 = prefs.getString('email');
  //   final counter2 = prefs.getString('nom');
  //   final counter3 = prefs.getString('prenom');
  //   final counter4 = prefs.getString('ville');
  //   if (response == "succes") {
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => LoginPage()));
  //   } else {
  //     Fluttertoast.showToast(
  //       msg: "erreur",
  //       toastLength: Toast.LENGTH_LONG,
  //       gravity: ToastGravity.BOTTOM,
  //       timeInSecForIosWeb: 3,
  //       backgroundColor: Color(0xFFd71010),
  //       textColor: Colors.white,
  //       fontSize: 16,
  //     );
  //   }
  // }

  // signup() async {
  //   var response =
  //       await Crud.postRequest("http://192.168.1.11/BonFiray/singup.php", {
  //     "password": password.text,
  //     "confirmpassword": confirmpassword.text,
  //   });
  //   if (response["status"] == "succes") {
  //     Fluttertoast.showToast(
  //       msg: "account created",
  //       toastLength: Toast.LENGTH_LONG,
  //       gravity: ToastGravity.CENTER,
  //       timeInSecForIosWeb: 3,
  //       backgroundColor: Colors.green,
  //       textColor: Colors.white,
  //       fontSize: 16,
  //     );
  //   } else {
  //     Fluttertoast.showToast(
  //       msg: "Error",
  //       toastLength: Toast.LENGTH_LONG,
  //       gravity: ToastGravity.CENTER,
  //       timeInSecForIosWeb: 3,
  //       backgroundColor: Colors.green,
  //       textColor: Colors.white,
  //       fontSize: 16,
  //     );
  //   }
  // }

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  bool sec = true;
  var visable = Icon(
    Icons.visibility,
    color: Color(0xff4c5166),
  );
  var visableoff = Icon(
    Icons.visibility_off,
    color: Color(0xff4c5166),
  );

  bool sec1 = true;
  var visable1 = Icon(
    Icons.visibility,
    color: Color(0xff4c5166),
  );
  var visableoff1 = Icon(
    Icons.visibility_off,
    color: Color(0xff4c5166),
  );

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
                      height: 15,
                    ),
                    Container(
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 15),
                              child: TextFormField(
                                controller: password,
                                obscureText: sec,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Color.fromARGB(255, 137, 141, 161),
                                  ),
                                  hintText: "Mot de passe ",
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          sec = !sec;
                                        });
                                      },
                                      icon: sec ? visableoff : visable),
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
                                    return "s'il vous plaît ecricre le mot de passe";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 15),
                              child: TextFormField(
                                controller: confirmpassword,
                                obscureText: sec1,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Color.fromARGB(255, 137, 141, 161),
                                  ),
                                  hintText: "Confirmer mot de passe ",
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          sec1 = !sec1;
                                        });
                                      },
                                      icon: sec1 ? visableoff1 : visable1),
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
                                    return "s'il vous plaît ecricre votre mot de passe";
                                  }
                                  if (password.text != confirmpassword.text) {
                                    return "Mot de passe ne sont pas identique";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.6, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  hint: Text(
                                    "Êtes-vous ?",
                                    style: GoogleFonts.roboto(
                                      fontStyle: FontStyle.normal,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  value: value,
                                  iconSize: 30,
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.black,
                                  ),
                                  isExpanded: true,
                                  items: items.map(BuildMenuItem).toList(),
                                  onChanged: (value) => setState(
                                    () => this.value = value,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 85,
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 29.5)),
                        Container(
                          child: Container(
                            child: RaisedButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => CreerCompte3()));
                              },
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              color: Color(0xFFd71010),
                              padding: EdgeInsets.only(
                                  left: 30, right: 30, top: 15, bottom: 15),
                              child: Text("Précedent",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  )),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 20)),
                        Container(
                          child: Container(
                            child: RaisedButton(
                              onPressed: () {
                                // await singup();

                                final Form = _formkey.currentState!;
                                if (Form.validate()) {
                                  Form.save();
                                }
                              },
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              color: Color(0xFFd71010),
                              padding: EdgeInsets.only(
                                  left: 30, right: 30, top: 15, bottom: 15),
                              child: Text("Enregistrer",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> BuildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
      );
}

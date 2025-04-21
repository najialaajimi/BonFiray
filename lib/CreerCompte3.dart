// import 'dart:collection';

import 'dart:developer';
// import 'package:dropdown_formfield/dropdown_formfield.dart';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfeproject/CreerCompte2.dart';
// import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pfeproject/Components/Crud.dart';
import 'package:pfeproject/LoginPage.dart';
// import 'CreerCompte4.dart';
import 'Header.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CreerCompte3 extends StatefulWidget {
  @override
  State<CreerCompte3> createState() => _CreerCompte3State();
}

class _CreerCompte3State extends State<CreerCompte3> {
  final items = [
    "Tunis",
    "Ariana",
    "Ben Arous",
    "Mannouba",
    "Bizerte",
    "Nabeul",
    "Béja",
    "Jendouba",
    "Zaghouan",
    "Siliana",
    "Le Kef",
    "Sousse",
    "Monastir",
    "Mahdia",
    "Kasserine",
    "Sidi Bouzid",
    "Kairouan",
    "Gafsa",
    "Sfax",
    "Gabès",
    "Médenine",
    "Tozeur",
    "Kebilia",
    "Tataouine"
  ];
  String? value;

  final items1 = ["Particulier", "Garagiste", "Feraieur"];
  String? value1;

  late String nom;
  late String prenom;
  late String email;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController Email = TextEditingController();
  TextEditingController fistname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

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

  crud Crud = crud();

  signup() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final numero = prefs.getString('num');
    print(numero);
    var response = await Crud.postRequest("http://10.0.2.2/pfe/Singup.php", {
      "first_name": fistname.text,
      "last_name": lastname.text,
      "email": Email.text,
      "pass": password.text,
      "type_user": value1,
      "ville": value,
      "numTel": numero,
    });
    if (response['status'] == "succes") {
      Fluttertoast.showToast(
        msg: "Comte crée avec succés",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Color(0xFFd71010),
        textColor: Colors.white,
        fontSize: 16,
      );
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } else {
      Fluttertoast.showToast(
        msg: "Vous-avez déjà un compte",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Color(0xFFd71010),
        textColor: Colors.white,
        fontSize: 16,
      );
    }
  }

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
                                  vertical: 5, horizontal: 15),
                              child: TextFormField(
                                controller: fistname,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Nom",
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
                                    return "s'il vous plaît ecricre votre nom";
                                  }
                                  return null;
                                },
                                onSaved: (String? value) {
                                  nom = value!;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              child: TextFormField(
                                controller: lastname,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Prénom",
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
                                    return "s'il vous plaît ecricre votre prenom";
                                  }
                                  return null;
                                },
                                onSaved: (String? value) {
                                  prenom = value!;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              child: TextFormField(
                                controller: Email,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: "Email",
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
                                    return "s'il vous plaît entrer votre adresse email";
                                  }
                                  if (!EmailValidator.validate(value) &&
                                      !RegExp("^[0-9]{8}").hasMatch(value)) {
                                    return "entrer une adresse email valide";
                                  }
                                  return null;
                                },
                                onSaved: (value) => email = value!,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
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
                                  vertical: 5, horizontal: 15),
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
                                    "ville",
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
                                child: DropdownButtonFormField<String>(
                                  hint: Text(
                                    "Êtes-vous ?",
                                    style: GoogleFonts.roboto(
                                      fontStyle: FontStyle.normal,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  value: value1,
                                  iconSize: 30,
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.black,
                                  ),
                                  isExpanded: true,
                                  items: items1.map(BuildMenuItem1).toList(),
                                  onChanged: (value1) => setState(
                                    () => this.value1 = value1,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 45, bottom: 10)),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Container(
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CreerCompte2(
                                              num: 'num',
                                            )));
                              },
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              color: Color(0xFFd71010),
                              padding: EdgeInsets.only(
                                  left: 25, right: 25, top: 15, bottom: 15),
                              child: Text("Précedent",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  )),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 20, bottom: 10)),
                        Container(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: RaisedButton(
                              onPressed: () async {
                                await signup();
                                // getpre();
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
                              child: Text("S'inscrire",
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

  DropdownMenuItem<String> BuildMenuItem1(String item1) => DropdownMenuItem(
        value: item1,
        child: Text(
          item1,
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
      );
}

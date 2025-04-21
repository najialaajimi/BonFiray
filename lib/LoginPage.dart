import 'dart:ui';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfeproject/models/user.dart';
import 'Components/Crud.dart';
import 'CreerCompte.dart';
import 'CreerCompte1.dart';
import 'HomeTest.dart';
import 'Header.dart';
import 'SplashScreen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:email_validator/email_validator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String Email;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  crud Crud = crud();

  login() async {
    final prefs =
        await SharedPreferences.getInstance(); // declaration shared pre
    var response = await Crud.postRequest("http://10.0.2.2/pfe/login.php", {
      "email": email.text,
      "pass": password.text,
    });
    if (response['status'] == "succes") {
      var id = response['id'].toString();
      await prefs.setString('id', id); // t7ot fi wost el shared pre
      final counter = prefs.getString('id'); // ta5ou mel shared pre
      print(counter);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeTest()));
    } else {
      Fluttertoast.showToast(
        msg: "vous n'avez pas un compte ou mot de passe invalide",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Color(0xFFd71010),
        textColor: Colors.white,
        fontSize: 16,
      );
    }
  }

  // Future login(BuildContext cont) async {
  //   var url = "http://192.168.1.4/BonFiray/login.php";
  //   try {
  //     var response = await http.post(Uri.parse(url), body: {
  //       "email": email.text,
  //       "pass": password.text,
  //     });
  //     var data = jsonDecode(response.body);
  //     if (data == "succes") {
  //       Navigator.push(
  //           cont, MaterialPageRoute(builder: (context) => HomeTest()));
  //     } else {
  //       Fluttertoast.showToast(
  //         msg: "you dont have account , create once",
  //         toastLength: Toast.LENGTH_LONG,
  //         gravity: ToastGravity.CENTER,
  //         timeInSecForIosWeb: 3,
  //         backgroundColor: Colors.red,
  //         textColor: Colors.white,
  //         fontSize: 16,
  //       );
  //     }
  //   } catch (e) {
  //     print("Erroe catch $e");
  //   }
  // }

  // Future login() async {
  //   var url = "http://192.168.1.11/BonFiray/login.php";
  //   var res = await http.post(Uri.parse(url), body: {
  //     "email": email.text,
  //     "password": password.text,
  //   });
  //   var data = json.decode(res.body);
  //   if (data == "succes") {
  //     Fluttertoast.showToast(
  //       msg: "login succes",
  //       toastLength: Toast.LENGTH_LONG,
  //       gravity: ToastGravity.CENTER,
  //       timeInSecForIosWeb: 3,
  //       backgroundColor: Colors.red,
  //       textColor: Colors.white,
  //       fontSize: 16,
  //     );
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => HomeTest()));
  //   } else {
  //     Fluttertoast.showToast(
  //       msg: "login and password incorrect",
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

  // ***********************************************************

  bool sec = true;
  var visable = Icon(
    Icons.visibility,
    color: Color(0xff4c5166),
  );
  var visableoff = Icon(
    Icons.visibility_off,
    color: Color(0xff4c5166),
  );

  // late UserCredential userCredential;

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
          children: <Widget>[
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
                  SizedBox(
                    height: 0,
                  ),
                  Center(
                    child: Text(
                      "s'identifier",
                      style:
                          GoogleFonts.salsa(color: Colors.black, fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            margin: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            child: TextFormField(
                              controller: email,
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color.fromARGB(255, 137, 141, 161),
                                ),
                                hintText: "Email ou numéro téléphone ",
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
                              // validator: (value) {
                              //   if (!isEmail(value!) && !isPhone(value)) {
                              //     return 'Please enter a valid email or phone number.';
                              //   }
                              //   return null;
                              // },
                              validator: (String? value) {
                                if (value!.isEmpty && value != null) {
                                  return "s'il vous plaît entrer votre adresse email";
                                }
                                if (!EmailValidator.validate(value) &&
                                    !RegExp(r"^[0-9]{8}$").hasMatch(value)) {
                                  return "entrer une adresse email valide ou numéro de téléhpne";
                                }
                                return null;
                              },
                              onSaved: (value) => Email = value!,
                            ),
                          ),
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
                                  return "s'il vous plaît ecricre votre mot de passe";
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CreerCompte1()));
                                },
                                child: Text("Mot de passe oublié ?",
                                    style: GoogleFonts.roboto(
                                      fontStyle: FontStyle.normal,
                                      color: Colors.black,
                                      fontSize: 14,
                                    ))),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 70),
                    margin: EdgeInsets.only(top: 30),
                    child: Container(
                      child: RaisedButton(
                        onPressed: () async {
                          await login();

                          final Form = _formkey.currentState!;
                          if (Form.validate()) {
                            Form.save();
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => HomeTest()));
                          }

                          // if (_formkey.currentState!.validate()) {
                          //   print("successful");

                          //   return;
                          // } else {
                          //   print("UnSuccessfull");
                          // }

                          // try {
                          //   await FirebaseAuth.instance
                          //       .signInWithEmailAndPassword(
                          //           email: "barry.allen@example.com",
                          //           password: "SuperSecretPassword!");
                          // } on FirebaseAuthException catch (e) {
                          //   if (e.code == 'user-not-found') {
                          //     print('No user found for that email.');
                          //   } else if (e.code == 'wrong-password') {
                          //     print('Wrong password provided for that user.');
                          //   } else if (e.code == null) {
                          //     print('remplir les champs');
                          //   }
                          // }
                        },
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        color: Color(0xFFd71010),
                        padding: EdgeInsets.all(15),
                        child: Text("Se connecter",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(left: 0, top: 0),
                      child: Text("ou",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 18,
                          )),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 70),
                    child: Container(
                      width: double.infinity,
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
                        padding: EdgeInsets.all(15),
                        child: Text("Créer un compte",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            )),
                      ),
                    ),
                  ),

//  *************************** connexion avec social media ********************************

                  // Center(
                  //   child: Container(
                  //     padding: EdgeInsets.only(left: 0, top: 16),
                  //     child: Text("Connectez avec ?",
                  //         style: GoogleFonts.roboto(
                  //           fontWeight: FontWeight.normal,
                  //           color: Colors.black,
                  //           fontSize: 20,
                  //         )),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 160, top: 10),
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         height: 40,
                  //         width: 40,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(20),
                  //         ),
                  //         child: InkWell(
                  //           onTap: () {},
                  //           child: Image.asset("assets/facebook.png"),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         width: 10,
                  //       ),
                  //       Container(
                  //         height: 40,
                  //         width: 40,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(20),
                  //         ),
                  //         child: InkWell(
                  //           onTap: () async {},
                  //           child: Image.asset("assets/google.png"),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  // *************************************************************************
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

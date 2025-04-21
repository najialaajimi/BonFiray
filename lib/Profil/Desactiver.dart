import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profil.dart';

class Desactiver extends StatefulWidget {
  @override
  State<Desactiver> createState() => _DesactiverState();
}

class _DesactiverState extends State<Desactiver> {
  TextEditingController password = TextEditingController();

  bool sec = true;
  var visable = Icon(
    Icons.visibility,
    color: Color(0xff4c5166),
  );
  var visableoff = Icon(
    Icons.visibility_off,
    color: Color(0xff4c5166),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFd71010),
        // automaticallyImplyLeading: false,
        title: Text(
          "Désactiver",
          style: TextStyle(fontSize: 24),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => profil()));
          },
        ),
      ),
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
                  Padding(padding: EdgeInsets.symmetric(vertical: 40)),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                    child: TextFormField(
                      controller: password,
                      obscureText: sec,
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Entrer le mot de passe ",
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
                  SizedBox(
                    height: 220,
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: RaisedButton(
                      onPressed: () {},
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      color: Color(0xFFd71010),
                      padding: EdgeInsets.all(15),
                      child: Text("Enregistrer",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                  ))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

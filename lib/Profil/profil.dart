import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfeproject/LoginPage.dart';
import 'mesAnnonces.dart';
import 'ModifierProfil.dart';
import 'Desactiver.dart';

class profil extends StatefulWidget {
  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          left: 10,
          top: 20,
        ),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/bacem.jpg"),
                        )),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "boukhatem Bacem",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Divider(
                  indent: 8,
                  endIndent: 20,
                  thickness: 1,
                  // height: 40,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ModifierProfil()));
                      },
                      child: Text(
                        "Modifier profil",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 190),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ModifierProfil()));
                        },
                        icon: Icon(Icons.arrow_forward_ios),
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: Divider(
                  indent: 8,
                  endIndent: 20,
                  thickness: 1,
                  height: 5,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => mesAnnonces()));
                      },
                      child: Text(
                        "Mes annonces",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 182),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios),
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: Divider(
                  indent: 8,
                  endIndent: 20,
                  thickness: 1,
                  height: 5,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Desactiver()));
                      },
                      child: Text(
                        "Désactiver mon compte",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 100),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios),
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: Divider(
                  indent: 8,
                  endIndent: 20,
                  thickness: 1,
                  height: 5,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 90),
                child: Container(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    color: Color(0xFFd71010),
                    padding: EdgeInsets.all(15),
                    child: Text("Déconnexion",
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
        ),
      ),
    );
  }
}

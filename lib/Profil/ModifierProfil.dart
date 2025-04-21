import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'profil.dart';

class ModifierProfil extends StatefulWidget {
  @override
  State<ModifierProfil> createState() => _ModifierProfilState();
}

class _ModifierProfilState extends State<ModifierProfil> {
  bool sec = true;
  var visable = Icon(
    Icons.visibility,
    color: Color(0xff4c5166),
  );
  var visableoff = Icon(
    Icons.visibility_off,
    color: Color(0xff4c5166),
  );

  File? _pickedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFd71010),
        // automaticallyImplyLeading: false,
        title: Text(
          "Modifier profil",
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
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Center(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo, width: 5),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: ClipOval(
                      child: _pickedImage != null
                          ? Image.file(
                              _pickedImage!,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              'assets/bacem.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  // image != null ? Image.file(image!) : Text("erreur"),
                  Positioned(
                      bottom: -1,
                      right: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 3, color: Colors.white),
                            color: Colors.white),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: ((builder) => bottomSheet()),
                            );
                          },
                          child: Icon(
                            Icons.add_a_photo_outlined,
                            color: Color(0xFFd71010),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Nom et Prénom",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 15),
                      child: TextField(
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: "Boukhatem Bacem",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black54)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Email",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 15),
                      child: TextField(
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: "Boukhatem.Bacem@gmail.com",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black54)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "ville",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 15),
                      child: TextField(
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: "Monastir",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black54)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Code postal",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 15),
                      child: TextField(
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: "5000",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black54)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Rue",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 15),
                      child: TextField(
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: "Rue rupablique",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black54)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Mot de passe",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 15),
                      child: TextField(
                          obscureText: sec,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: "*********",
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      sec = !sec;
                                    });
                                  },
                                  icon: sec ? visableoff : visable),
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                              ))),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    margin: EdgeInsets.only(bottom: 10),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => profil()));
                      },
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
            )),
          ],
        ),
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.camera),
                onPressed: () {
                  pickImageC();
                },
                label: Text("Camera"),
              ),
              FlatButton.icon(
                icon: Icon(Icons.image),
                onPressed: () {
                  pickImage();
                },
                label: Text("Gallery"),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() => this._pickedImage = imageTemp);
    } on PlatformException catch (e) {
      print("erreur : $e");
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() => this._pickedImage = imageTemp);
    } on PlatformException catch (e) {
      print("erreur : $e");
    }
  }
}

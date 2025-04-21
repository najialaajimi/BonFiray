import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'AjoutAnnonces.dart';

class AjouterAnnonces1 extends StatefulWidget {
  @override
  State<AjouterAnnonces1> createState() => _AjouterAnnonces1State();
}

class _AjouterAnnonces1State extends State<AjouterAnnonces1> {
  File? _pickedImage;
  File? _pickedImage1;
  File? _pickedImage2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFd71010),
        // automaticallyImplyLeading: false,
        title: Text(
          "Ajouter annonces",
          style: TextStyle(fontSize: 24),
        ),

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AjoutAnnonces()));
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
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 35),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: ((builder) => bottomSheet()),
                            );
                          },
                          child: ClipOval(
                            child: _pickedImage != null
                                ? Image.file(
                                    _pickedImage!,
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  )
                                : Image.asset(
                                    'assets/placeholder.png',
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: ((builder) => bottomSheet1()),
                            );
                          },
                          child: ClipOval(
                            child: _pickedImage1 != null
                                ? Image.file(
                                    _pickedImage1!,
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  )
                                : Image.asset(
                                    'assets/placeholder.png',
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: ((builder) => bottomSheet2()),
                            );
                          },
                          child: ClipOval(
                            child: _pickedImage2 != null
                                ? Image.file(
                                    _pickedImage2!,
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  )
                                : Image.asset(
                                    'assets/placeholder.png',
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 35),
                            child: Container(
                              padding: EdgeInsets.only(
                                  bottom: 15, right: 15, left: 15),
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: "Prix",
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
                                    )),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                bottom: 15, right: 15, left: 15),
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  hintText: "Téléphone",
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
                                  )),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                bottom: 15, right: 15, left: 15),
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  hintText: "Description",
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
                                  )),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                bottom: 15, right: 15, left: 15),
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  hintText: "Titre",
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
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 70),
                            child: Container(
                              width: double.infinity,
                              child: RaisedButton(
                                onPressed: () {},
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                color: Color(0xFFd71010),
                                padding: EdgeInsets.all(15),
                                child: Text("Ajouter l'annonces",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 24,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
            ],
          )),
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

  Widget bottomSheet1() {
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
                  pickImageC1();
                },
                label: Text("Camera"),
              ),
              FlatButton.icon(
                icon: Icon(Icons.image),
                onPressed: () {
                  pickImage1();
                },
                label: Text("Gallery"),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget bottomSheet2() {
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
                  pickImageC2();
                },
                label: Text("Camera"),
              ),
              FlatButton.icon(
                icon: Icon(Icons.image),
                onPressed: () {
                  pickImage2();
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

  Future pickImage1() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() => this._pickedImage1 = imageTemp);
    } on PlatformException catch (e) {
      print("erreur : $e");
    }
  }

  Future pickImageC1() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() => this._pickedImage1 = imageTemp);
    } on PlatformException catch (e) {
      print("erreur : $e");
    }
  }

  Future pickImage2() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() => this._pickedImage2 = imageTemp);
    } on PlatformException catch (e) {
      print("erreur : $e");
    }
  }

  Future pickImageC2() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() => this._pickedImage2 = imageTemp);
    } on PlatformException catch (e) {
      print("erreur : $e");
    }
  }
}

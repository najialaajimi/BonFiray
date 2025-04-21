import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pfeproject/Acceuil.dart';
import 'AjouterAnnonces1.dart';
import 'package:http/http.dart' as http;

class AjoutAnnonces extends StatefulWidget {
  @override
  State<AjoutAnnonces> createState() => _AjoutAnnoncesState();
}

class _AjoutAnnoncesState extends State<AjoutAnnonces> {
  File? _pickedImage;
  File? _pickedImage1;
  File? _pickedImage2;

  final items = ["Peugeot", "BMW", "Mercedes"];
  String? value;

  final items1 = ["2001", "2005", "2006"];
  String? value1;

  final items2 = ["Moteur", "Pneus", "Disque"];
  String? value2;

  final items3 = [
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
  String? value3;

  final items4 = ["Neuf", "Occasion", "Endommagé"];
  String? value4;

  final items5 = ["E30", "206", "E40"];
  String? value5;

  Future ajouter_annonce() async {
    final uri = Uri.parse("http://10.0.2.2/pfe/ajouter_annonce.php");
    var request = http.MultipartRequest('POST', uri);

    var response = await request.send();

    if (response.statusCode == 200) {
      uploadimage();
      uploadimag();
      uploadimg();
    } else {
      print("upload failed");
    }
  }

  Future uploadimage() async {
    final uri = Uri.parse("http://10.0.2.2/pfe/uploadimg.php");
    var request = http.MultipartRequest('POST', uri);
    var pic = await http.MultipartFile.fromPath("image", _pickedImage!.path);
    request.files.add(pic);
    var response = await request.send();

    if (response.statusCode == 200) {
      print("upload success");
    } else {
      print("upload failed");
    }
  }

  Future uploadimag() async {
    final uri = Uri.parse("http://10.0.2.2/pfe/uploadimg.php");
    var request = http.MultipartRequest('POST', uri);
    var pic = await http.MultipartFile.fromPath("image", _pickedImage1!.path);
    request.files.add(pic);
    var response = await request.send();

    if (response.statusCode == 200) {
      print("upload success");
    } else {
      print("upload failed");
    }
  }

  Future uploadimg() async {
    final uri = Uri.parse("http://10.0.2.2/pfe/uploadimg.php");
    var request = http.MultipartRequest('POST', uri);
    var pic = await http.MultipartFile.fromPath("image", _pickedImage2!.path);
    request.files.add(pic);
    var response = await request.send();

    if (response.statusCode == 200) {
      print("upload success");
    } else {
      print("upload failed");
    }
  }

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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Acceuil()));
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
                            padding: const EdgeInsets.only(top: 40),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.6, vertical: 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  hint: Text(
                                    "Marque",
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
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.6, vertical: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                hint: Text(
                                  "Modéle",
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
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.6, vertical: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                hint: Text(
                                  "Sous modéle",
                                  style: GoogleFonts.roboto(
                                    fontStyle: FontStyle.normal,
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                value: value5,
                                iconSize: 30,
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                                isExpanded: true,
                                items: items5.map(BuildMenuItem5).toList(),
                                onChanged: (value5) => setState(
                                  () => this.value5 = value5,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.6, vertical: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                hint: Text(
                                  "Piéces",
                                  style: GoogleFonts.roboto(
                                    fontStyle: FontStyle.normal,
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                value: value2,
                                iconSize: 30,
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                                isExpanded: true,
                                items: items2.map(BuildMenuItem2).toList(),
                                onChanged: (value2) => setState(
                                  () => this.value2 = value2,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 1, horizontal: 15),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.6, vertical: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                hint: Text(
                                  "Ville",
                                  style: GoogleFonts.roboto(
                                    fontStyle: FontStyle.normal,
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                value: value3,
                                iconSize: 30,
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                                isExpanded: true,
                                items: items3.map(BuildMenuItem3).toList(),
                                onChanged: (value3) => setState(
                                  () => this.value3 = value3,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.6, vertical: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                hint: Text(
                                  "Etat",
                                  style: GoogleFonts.roboto(
                                    fontStyle: FontStyle.normal,
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                value: value4,
                                iconSize: 30,
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                                isExpanded: true,
                                items: items4.map(BuildMenuItem4).toList(),
                                onChanged: (value4) => setState(
                                  () => this.value4 = value4,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 60),
                            margin: EdgeInsets.only(bottom: 10),
                            child: Container(
                              width: double.infinity,
                              child: RaisedButton(
                                onPressed: () async {
                                  ajouter_annonce();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AjouterAnnonces1()));
                                },
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                color: Color(0xFFd71010),
                                padding: EdgeInsets.all(15),
                                child: Text("Suivant",
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

  DropdownMenuItem<String> BuildMenuItem2(String item2) => DropdownMenuItem(
        value: item2,
        child: Text(
          item2,
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
      );

  DropdownMenuItem<String> BuildMenuItem3(String item3) => DropdownMenuItem(
        value: item3,
        child: Text(
          item3,
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
      );

  DropdownMenuItem<String> BuildMenuItem4(String item4) => DropdownMenuItem(
        value: item4,
        child: Text(
          item4,
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
      );

  DropdownMenuItem<String> BuildMenuItem5(String item5) => DropdownMenuItem(
        value: item5,
        child: Text(
          item5,
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
      );

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

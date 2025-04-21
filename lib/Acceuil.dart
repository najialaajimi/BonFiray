import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:pfeproject/Components/crud.dart';
import 'package:pfeproject/detailsAnnoncesHome.dart';
import 'ajoutAnnonces/AjoutAnnonces.dart';
import 'package:http/http.dart' as http;

class Acceuil extends StatefulWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  // final items = ["Peugeot", "BMW", "Mercedes"];
  // String? value;

  // final items1 = ["2001", "2005", "2006"];
  // String? value1;

  final items2 = ["Moteur", "Pneus", "Disque"];
  String? value2;

  final items3 = ["E30", "206", "E40"];
  String? value3;
  String? img;
  // crud Crud = crud();

  String? selectedValue;
  List itemlist = [];

  String? selectedValue1;
  List itemlist1 = [];

  Future getdata() async {
    var url = "http://10.0.2.2/pfe/getMarque.php";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      setState(() {
        itemlist = jsonData;
      });
    }
  }

  Future getdataModele() async {
    var url = "http://10.0.2.2/pfe/getmodele.php";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      setState(() {
        itemlist1 = jsonData;
      });
    }
  }

  Future getannonce() async {
    var url = "http://10.0.2.2/pfe/getannonce.php";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      setState(() {
        img = jsonData;
        print(img);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getdata();
    getdataModele();
    getannonce();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 2),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: TextField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 137, 141, 161),
                  ),
                  hintText: "Recherche ",
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
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                SingleChildScrollView(
                    child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 70),
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AjoutAnnonces()));
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(254, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            primary: Color(0xFFd71010),
                          ),
                          icon: Icon(Icons.add),
                          label: Text("Publier annonce",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              )),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.6, vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                            isExpanded: true,
                            hint: Text(
                              "Marque",
                              style: GoogleFonts.roboto(
                                fontStyle: FontStyle.normal,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            iconSize: 30,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            value: selectedValue,
                            items: itemlist.map((marque) {
                              return DropdownMenuItem(
                                value: marque['nom_marque'],
                                child: Text(marque['nom_marque']),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value as String?;
                              });
                            }),
                      ),
                    ),
                    Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10.6, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            isExpanded: true,
                            hint: Text(
                              "Modele",
                              style: GoogleFonts.roboto(
                                fontStyle: FontStyle.normal,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            iconSize: 30,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            value: selectedValue1,
                            items: itemlist1.map((modele) {
                              return DropdownMenuItem(
                                value: modele['nom_modele'],
                                child: Text(modele['nom_modele']),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedValue1 = value as String?;
                              });
                            },
                          ),
                        )),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.6, vertical: 2),
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
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.6, vertical: 2),
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 18),
                      child: Container(
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: () {},
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          color: Color(0xFFd71010),
                          padding: EdgeInsets.all(14),
                          child: Text("Recherche",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        _build(
                            "http://10.0.2.2/pfe/upload/ea183443-efc1-4e55-be84-2c61f4b1f0bb3171532029278058202.jpg",
                            "http://10.0.2.2/pfe/upload/ea183443-efc1-4e55-be84-2c61f4b1f0bb3171532029278058202.jpg"),
                        // _build("assets/Peugeot.png"),
                        _build(
                            "http://10.0.2.2/pfe/upload/ea183443-efc1-4e55-be84-2c61f4b1f0bb3171532029278058202.jpg",
                            "http://10.0.2.2/pfe/upload/ea183443-efc1-4e55-be84-2c61f4b1f0bb3171532029278058202.jpg"),
                        // _build("assets/Citroen.png"),
                      ],
                    )
                  ],
                )),
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget _build(String imgpath, String imgpath1) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => detailsAnnoncesHome()));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10, bottom: 20),
        child: Row(
          children: [
            Container(
              height: 190,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: Colors.black),
                // boxShadow: BoxShadow(color: Colors.grey)
              ),
              child: Image.network(
                imgpath,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              width: 35,
            ),
            Container(
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: Colors.black54),
                // boxShadow: BoxShadow(color: Colors.grey)
              ),
              child: Image.network(
                imgpath1,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // DropdownMenuItem<String> BuildMenuItem(String item) => DropdownMenuItem(
  //       value: item,
  //       child: Text(
  //         item,
  //         style: TextStyle(
  //           color: Colors.black,
  //         ),
  //         textAlign: TextAlign.start,
  //       ),
  //     );

  // DropdownMenuItem<String> BuildMenuItem1(String item1) => DropdownMenuItem(
  //       value: item1,
  //       child: Text(
  //         item1,
  //         style: TextStyle(
  //           color: Colors.black,
  //         ),
  //         textAlign: TextAlign.start,
  //       ),
  //     );

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
}

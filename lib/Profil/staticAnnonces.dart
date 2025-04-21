import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mesAnnonces.dart';

class staticAnnonces extends StatefulWidget {
  @override
  State<staticAnnonces> createState() => _staticAnnoncesState();
}

class _staticAnnoncesState extends State<staticAnnonces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFd71010),
        // automaticallyImplyLeading: false,
        title: Text(
          "Mes annonces",
          style: TextStyle(fontSize: 24),
        ),

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => mesAnnonces()));
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
              height: 662.5,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 140),
                    height: 610,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 50),
                    child: Expanded(
                      child: Container(
                        width: 300,
                        height: 200,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage("assets/porte.jpg"),
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  ),
                  ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 280, left: 5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Porte avant gauche PEUGEOT 206",
                                  style: TextStyle(
                                      fontFamily: 'roboto',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Container(
                                  child: Icon(
                                    Icons.visibility,
                                    size: 20,
                                  ),
                                  padding: EdgeInsets.only(right: 5),
                                ),
                                Text(
                                  "15",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 327),
                                  child: Icon(
                                    Icons.chat,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
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
                              height: 10,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 5)),
                                    Text(
                                      "Status : ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 250,
                                    ),
                                    Text(
                                      "Active",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 5)),
                                    Text(
                                      "Dernière mise à jour :",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Text(
                                      " JJ/MM/AAAA",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 5)),
                                    Text(
                                      "Date activation :  ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 128,
                                    ),
                                    Text(
                                      " JJ/MM/AAAA",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Container(
                                  child: Divider(
                                    indent: 8,
                                    endIndent: 20,
                                    thickness: 1,
                                    height: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Container(
                                    child: Text(
                                      "Cette annonce apparaît dans les résultats de recherche entre les pages X et Y.Pour bénéficier de plus de visibilité, Vous pouvez la Booster.",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 90),
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
                                      child: Text("NITRO !",
                                          style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 24,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

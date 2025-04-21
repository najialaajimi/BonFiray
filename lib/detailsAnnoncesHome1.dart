import 'package:flutter/material.dart';
import 'package:pfeproject/detailsAnnoncesHome.dart';

class detailsAnnoncesHome1 extends StatefulWidget {
  @override
  State<detailsAnnoncesHome1> createState() => _detailsAnnoncesHome1State();
}

class _detailsAnnoncesHome1State extends State<detailsAnnoncesHome1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFd71010),
        // automaticallyImplyLeading: false,
        title: Text(
          "Porte",
          style: TextStyle(fontSize: 24),
        ),

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => detailsAnnoncesHome()));
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
            SizedBox(
              height: 662.5,
              child: Stack(
                children: [
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
                    padding: const EdgeInsets.only(top: 50, left: 30),
                    child: Expanded(
                      child: Row(
                        children: [
                          Container(
                            width: 220,
                            height: 170,
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
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 70),
                            child: Text(
                              "50DT",
                              style: TextStyle(
                                  color: Color(0xFFE9B624),
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 260, left: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Text(
                                    "Porte avant gauche BMW 2013",
                                    style: TextStyle(
                                        fontFamily: 'roboto',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.chat,
                                      size: 24,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Container(
                                  child: IconButton(
                                    icon: Icon(Icons.favorite_border, size: 24),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Text(
                                  "Marque : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 95,
                                ),
                                Text(
                                  "BMW",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Text(
                                  "Modéle : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 95,
                                ),
                                Text(
                                  "2013",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Text(
                                  "Référence : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Text(
                                  "51368188841 / 842",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Text(
                                  "Etat : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 128,
                                ),
                                Text(
                                  "Bon etat",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Text(
                                  "Téléphone : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Text(
                                  "52458962",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Text(
                                  "Date de l'annonce : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "25/04/2022",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Text(
                                  "Décription : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 85,
                                ),
                                Text(
                                  "......",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pfeproject/Acceuil.dart';
import 'package:pfeproject/Header.dart';
import 'package:pfeproject/detailsAnnoncesHome1.dart';

class detailsAnnoncesHome extends StatefulWidget {
  @override
  State<detailsAnnoncesHome> createState() => _detailsAnnoncesHomeState();
}

class _detailsAnnoncesHomeState extends State<detailsAnnoncesHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFd71010),
        title: Text(
          "BMW",
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
          children: <Widget>[
            SizedBox(
              height: 662,
              child: Stack(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 140),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          )),
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Column(
                              children: [
                                _buildCard("porte", "50 DT", "assets/porte.jpg",
                                    "assets/porte.jpg", true),
                                _buildCard(
                                    "moteur",
                                    "150 DT",
                                    "assets/moteur.png",
                                    "assets/moteur.png",
                                    false),
                                _buildCard(
                                    " porte",
                                    "50 DT",
                                    "assets/porte.jpg",
                                    "assets/porte.jpg",
                                    false),
                                _buildCard(
                                    "moteur",
                                    "150 DT",
                                    "assets/moteur.png",
                                    "assets/moteur.png",
                                    false),
                                // _build("assets/Citroen.png"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 125),
                    child: Expanded(
                      child: Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 3,
                              blurRadius: 5,
                            )
                          ],
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage("assets/bmw.png"),
                              fit: BoxFit.contain,
                            )),
                      ),
                    ),
                  ),
                  // Container(
                  //   child: _image("assets/bmw.png"),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _image(String imgpath) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 110),
      child: Container(
        child: Image(
          image: AssetImage(imgpath),
          height: 100,
          width: 100,
        ),
      ),
    );
  }

  Widget _buildCard(
    String name,
    String price,
    String imgpath,
    imgpath1,
    bool isFavorite,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => detailsAnnoncesHome1()));
        },
        child: Row(children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 3,
                  blurRadius: 5,
                )
              ],
              color: Color(0xFFEDEDED),
            ),
            child: Expanded(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          padding: EdgeInsets.only(
                            left: 80,
                          ),
                          icon: isFavorite
                              ? Icon(Icons.favorite, color: Color(0xFFd71010))
                              : Icon(Icons.favorite_border_outlined,
                                  color: Colors.black38),
                          onPressed: () {},
                        ),
                        IconButton(
                          padding: EdgeInsets.only(left: 1, right: 15),
                          icon: Icon(Icons.chat),
                          color: Colors.black38,
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(imgpath),
                      fit: BoxFit.contain,
                    )),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                        color: Color(0xFFE9B624),
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.black45,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 35,
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 3,
                  blurRadius: 5,
                )
              ],
              color: Color(0xFFEDEDED),
            ),
            child: Expanded(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          padding: EdgeInsets.only(
                            left: 80,
                          ),
                          icon: isFavorite
                              ? Icon(Icons.favorite, color: Color(0xFFd71010))
                              : Icon(Icons.favorite_border_outlined,
                                  color: Colors.black38),
                          onPressed: () {},
                        ),
                        IconButton(
                          padding: EdgeInsets.only(left: 1, right: 15),
                          icon: Icon(Icons.chat),
                          color: Colors.black38,
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(imgpath1),
                      fit: BoxFit.contain,
                    )),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                        color: Color(0xFFE9B624),
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.black45,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class Favoris extends StatefulWidget {
  const Favoris({Key? key}) : super(key: key);

  @override
  State<Favoris> createState() => _FavorisState();
}

class _FavorisState extends State<Favoris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(right: 5, left: 5, bottom: 10),
            width: 160,
            height: 590,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
              childAspectRatio: 0.7,
              children: <Widget>[
                _buildCard(
                    "Disques De Frein", "50 DT", "assets/porte.jpg", false),
                _buildCard("Frien", "150 DT", "assets/moteur.png", false),
                _buildCard("Moteur", "550 DT", "assets/moteur.png", true),
                _buildCard("Porte droite", "100 DT", "assets/moteur.png", true),
                _buildCard(
                    "Disques De Frein", "50 DT", "assets/porte.jpg", false),
                _buildCard("Frien", "150 DT", "assets/moteur.png", false),
                _buildCard("Moteur", "550 DT", "assets/moteur.png", true),
                _buildCard("Porte droite", "100 DT", "assets/moteur.png", true),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard(
    String name,
    String price,
    String imgpath,
    bool isFavorite,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 5, right: 5),
      child: InkWell(
        onTap: () {},
        child: Container(
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
      ),
    );
  }
}

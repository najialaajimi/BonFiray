import 'package:flutter/material.dart';
import 'ModifierAnnonces.dart';
import 'profil.dart';
import 'staticAnnonces.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class mesAnnonces extends StatefulWidget {
  @override
  State<mesAnnonces> createState() => _mesAnnoncesState();
}

class _mesAnnoncesState extends State<mesAnnonces> {
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => profil()));
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(right: 5, left: 5),
            width: 160,
            height: 640,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
              childAspectRatio: 0.65,
              children: <Widget>[
                _buildCard("Disques De Frein", "50 DT", "assets/porte.jpg"),
                _buildCard("Frien", "150 DT", "assets/moteur.png"),
                _buildCard("Moteur", "550 DT", "assets/moteur.png"),
                _buildCard("Porte droite", "100 DT", "assets/moteur.png"),
                _buildCard("Disques De Frein", "50 DT", "assets/porte.jpg"),
                _buildCard("Frien", "150 DT", "assets/moteur.png"),
                _buildCard("Moteur", "550 DT", "assets/moteur.png"),
                _buildCard("Porte droite", "100 DT", "assets/moteur.png"),
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
                        icon: Icon(Icons.assessment),
                        color: Colors.black38,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => staticAnnonces()));
                        },
                      ),
                      IconButton(
                        padding: EdgeInsets.only(left: 1, right: 15),
                        icon: Icon(Icons.update),
                        color: Colors.black38,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ModifierAnnonces()));
                        },
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
                Padding(
                  padding: EdgeInsets.only(
                      top: 10, bottom: 0, right: 8.0, left: 8.0),
                  child: Container(
                    color: Colors.black54,
                    height: 1.0,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 11, right: 8, left: 16),
                  child: Container(
                    width: double.infinity,
                    child: AnimatedButton(
                      height: 35,
                      width: 140,
                      onPress: () {},
                      text: "NITRO",
                      backgroundColor: Color(0xFFd71010),
                      selectedGradientColor:
                          LinearGradient(colors: [Colors.white, Colors.white]),
                      selectedTextColor: Color(0xFFd71010),
                      transitionType: TransitionType.LEFT_TOP_ROUNDER,
                      isReverse: true,
                      borderColor: Colors.white,
                      borderRadius: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

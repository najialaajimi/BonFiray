import 'package:flutter/material.dart';
import 'Acceuil.dart';
import 'Favoris.dart';
import 'LoginPage.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final Screen = [
  //   Acceuil(),
  //   Favoris(),
  // ];

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 5,
        child: Scaffold(
          // drawer: Drawerhome(),
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Bon Firay",
                style: TextStyle(fontSize: 24),
              ),
            ),
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   onPressed: () {},
            // ),
            actions: [
              IconButton(
                icon: Icon(Icons.notifications_none),
                onPressed: () {},
              ),
            ],
            //backgroundColor: Colors.purple,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFFd71010),
                  Color(0xFFd71010),
                ]),
              ),
            ),
            bottom: TabBar(
              //isScrollable: true,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.favorite_border_outlined)),
                Tab(icon: Icon(Icons.person_outline_outlined)),
                Tab(icon: Icon(Icons.chat)),
                Tab(icon: Icon(Icons.assignment_late)),
              ],
            ),
            elevation: 5,
            titleSpacing: 0,
          ),
          body: TabBarView(
            children: [
              buildAceuil(),
              buildPage('Favoris'),
              buildPage('Profil'),
              buildPage('Discusion'),
              buildPage('A propos'),
            ],
          ),
        ),
      );

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );

  Widget buildAceuil() => Column(
        children: [
          Container(
            child: Text(
              "Acceuil111",
              style: TextStyle(fontSize: 28),
            ),
          ),
        ],
      );
}

import 'package:flutter/material.dart';
import 'Acceuil.dart';
import 'chats/Discusion.dart';
import 'Favoris.dart';
import 'Profil/profil.dart';
import 'Apropos.dart';
import 'LoginPage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeTest extends StatefulWidget {
  @override
  State<HomeTest> createState() => _HomeState();
}

class _HomeState extends State<HomeTest> {
  GlobalKey<CurvedNavigationBarState> _NavKey = GlobalKey();
  var PageAll = [Acceuil(), Favoris(), profil(), Discusion(), Apropos()];
  var myIndex = 0;
  String AppBarTitle = "Acceuil";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        key: _NavKey,
        height: 63,
        items: [
          Icon(
            (myIndex == 0) ? Icons.home : Icons.home,
            color: Colors.white,
          ),
          Icon(
            (myIndex == 1)
                ? Icons.favorite_border_outlined
                : Icons.favorite_border_outlined,
            color: Colors.white,
          ),
          Icon(
            (myIndex == 2)
                ? Icons.person_outline_outlined
                : Icons.person_outline_outlined,
            color: Colors.white,
          ),
          Icon(
            (myIndex == 3) ? Icons.chat : Icons.chat,
            color: Colors.white,
          ),
          Icon(
            (myIndex == 4) ? Icons.assignment_late : Icons.assignment_late,
            color: Colors.white,
          )
        ],
        // buttonBackgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            myIndex = index;
            if (myIndex == 0) {
              AppBarTitle = "Acceuil";
            } else if (myIndex == 1) {
              AppBarTitle = "Favoris";
            } else if (myIndex == 2) {
              AppBarTitle = "profil";
            } else if (myIndex == 3) {
              AppBarTitle = "Discusion";
            } else if (myIndex == 4) {
              AppBarTitle = "A propos";
            }
            return null;
          });
        },
        animationCurve: Curves.fastLinearToSlowEaseIn,
        color: Color(0xFFd71010),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFFd71010),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            // Image.asset(
            //   "assets/logobonfiraywhite.png",
            //   width: 50,
            //   height: 50,
            // ),
            SizedBox(
              width: 2,
            ),
            Text(
              AppBarTitle,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
      body: PageAll[myIndex],
    );
  }
}

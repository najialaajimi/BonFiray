import 'package:flutter/material.dart';

class Apropos extends StatefulWidget {
  @override
  State<Apropos> createState() => _AproposState();
}

class _AproposState extends State<Apropos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Apropos",
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}

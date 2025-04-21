import 'package:flutter/material.dart';
import 'package:pfeproject/models/user.dart';
import 'package:pfeproject/models/message.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({required this.user});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFd71010),
        title: RichText(
          textAlign: TextAlign.start,
          text: TextSpan(children: [
            TextSpan(
                text: widget.user.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),
          ]),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Container(
        child: Text("good"),
      ),
    );
  }
}

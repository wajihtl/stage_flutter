import 'package:easyship/widgets/Sender/ChatCard_S.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatTab_S extends StatefulWidget {
  @override
  _ChatTab_SState createState() => _ChatTab_SState();
}

class _ChatTab_SState extends State<ChatTab_S> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, i) {
          return ChatCard_S();
        },
      ),
    );
  }
}

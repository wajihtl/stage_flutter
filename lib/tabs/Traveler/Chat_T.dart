import 'package:easyship/widgets/Traveler/ChatCard_T.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatTab_T extends StatefulWidget {
  @override
  _ChatTab_TState createState() => _ChatTab_TState();
}

class _ChatTab_TState extends State<ChatTab_T> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 50,
            color: Colors.black,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.all(16),
              itemBuilder: (context, i) {
                return ChatCard_T();
              },
            ),
          ),
        ],
      ),
    );
  }
}

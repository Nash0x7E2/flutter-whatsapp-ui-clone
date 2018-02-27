import 'package:flutter/material.dart';
import 'dart:async';
import './model/chat_model.dart';

class ChatScreen extends StatefulWidget {
  _ChatScreen createState() => new _ChatScreen();
}

class _ChatScreen extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return new Column(
          children: <Widget>[
            new Divider(
              height: 10.0,
            ),
            new ListTile(
              leading: new CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: new NetworkImage(data[index].avatarurl),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(data[index].username,
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                  new Text(data[index].time,
                      style: new TextStyle(color: Colors.grey, fontSize: 14.0))
                ],
              ),
              subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: new Text(data[index].message,style: new TextStyle(color: Colors.grey, fontSize: 15.0) ), ),
            )
          ],
        );
      },
    );
  }
}

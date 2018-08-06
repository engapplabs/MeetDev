import "package:flutter/material.dart";
import "../models/user.dart";

class UserInfo extends StatelessWidget {

  static String TAG = "USER_INFO";
  final User user;

  UserInfo(this.user);

  Widget build(context) {
    return new Scaffold(
      body: new Container(
        margin: new EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.only(bottom: 10.0),
              child: new Image.network(user.avatarUrl),
            ),
             new Padding(
              padding: new EdgeInsets.only(bottom: 10.0),
              child: new Text(user.name),
            ),
             new Padding(
              padding: new EdgeInsets.only(bottom: 10.0),
              child: new Text(user.login),
            ),
          ],
        ),
      ),
    );
  }
}
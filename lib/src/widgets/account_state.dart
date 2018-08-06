import "package:flutter/material.dart";
import "../models/user.dart";

class AccountState extends StatelessWidget {

  final User user;

  AccountState(this.user);

  Widget build(context) {
    return new Column(
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
    );
  }
}

import "package:flutter/material.dart";
import "../models/user.dart";

class AccountState extends StatelessWidget {

  final User user;

  AccountState(this.user);

  Widget build(context) {
    return new Scaffold(
      body: new Column(
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
          new Padding(
            padding: new EdgeInsets.only(bottom: 10.0),
            child: new Text(user.bio),
          ),
          new Padding(
            padding: new EdgeInsets.only(bottom: 10.0),
            child: new Text(user.company),
          ),
          new Padding(
            padding: new EdgeInsets.only(bottom: 10.0),
            child: new Text(user.location),
          ),
          new Padding(
            padding: new EdgeInsets.only(bottom: 10.0),
            child: new Text(user.blog),
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

import "package:flutter/material.dart";
import "../models/user.dart";
import "../models/organization.dart";
import "package:http/http.dart";

class AccountState extends StatelessWidget {

  final User user;

  AccountState(this.user);

  Widget build(context) {

    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.only(bottom: 10.0),
            child: new Image(
              height: 300.0,
              width: 800.0,
              image: new NetworkImage(user.avatarUrl),
            ),
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
          new Row(
            children: <Widget>[
              new Image(
                height: 30.0,
                width: 30.0,
                image: NetworkImage(user.organizations[0].avartarUrl)
              )
            ],              
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

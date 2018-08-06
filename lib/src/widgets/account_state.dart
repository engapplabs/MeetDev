import "package:flutter/material.dart";
import "../models/user.dart";
import "./organization_icons_list.dart";

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
            child: user.name != null ? new Text(user.name) : new Text(""),
          ),
          new Padding(
            padding: new EdgeInsets.only(bottom: 10.0),
            child: user.login != null ? Text(user.login) : new Text(""),
          ),
          new Padding(
            padding: new EdgeInsets.only(bottom: 10.0),
            child: user.bio != null ? Text(user.bio) : new Text(""),
          ),
          new Padding(
            padding: new EdgeInsets.only(bottom: 10.0),
            child: user.company != null ? Text(user.company) : new Text(""),
          ),
          new Padding(
            padding: new EdgeInsets.only(bottom: 10.0),
            child: user.location != null ? new Text(user.location) : new Text(""),
          ),
          new Padding(
            padding: new EdgeInsets.only(bottom: 10.0),
            child: user.blog != null ? Text(user.blog) : new Text(""), 
          ),
          new OrganizationIconsList(user.organizations),
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

import "package:flutter/material.dart";
import "../models/user.dart";
import "../models/organization.dart";
import "package:http/http.dart";

class AccountState extends StatelessWidget {

  final User user;

  AccountState(this.user);

  List<Widget> getOrganizations() {
    List<Widget> organizationIcons = [];
    for (var organization in user.organizations) {
      organizationIcons.add(new Padding(
        padding: new EdgeInsets.all(10.0),
        child: new Image(
          image: new NetworkImage(organization.avartarUrl),
          width: 35.0,
          height: 35.0,
        ),
      ));
    }
    return organizationIcons;
  }

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: getOrganizations()              
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

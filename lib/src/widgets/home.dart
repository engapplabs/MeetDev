import "package:flutter/material.dart";

class Home extends StatefulWidget {

  static String TAG = "home";

  createState() => new HomeState();
}

class HomeState extends State<Home> {

  String _userName;

  Widget build(context) {

    final user = new TextFormField(
      keyboardType: TextInputType.text,
      initialValue: "github_user",


    );
    final searchButton = new Padding();

    return null;
  }
}

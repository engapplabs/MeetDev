import "package:flutter/material.dart";
import "user_info.dart";
import "../services/user_searcher.dart";
import "../models/user.dart";
import "package:http/http.dart";
import "dart:convert";

class Home extends StatefulWidget {

  static String TAG = "home";

  createState() => new HomeState();
}

class HomeState extends State<Home> {

  var formKey = new GlobalKey<FormState>();

  String _userName;

  Widget getUserForm() {
     return new TextFormField(
       onSaved: (value) {
         _userName = value;
       },
       validator: (value) {
         if(value.length < 2) {
           return "User name too short";
         }
       },
       keyboardType: TextInputType.text,
       decoration: new InputDecoration(
         labelText: "User name",
         hintText: "GitUser"
         ),
      );
  }

  Widget getSearchButton() {
    return new RaisedButton(
      onPressed: () async {
        if(formKey.currentState.validate()) {
          formKey.currentState.save();
          var givenInfoUser = await UserSearcherService().getUserInfo(_userName);
          final user = new User.fromJSON(givenInfoUser);
          Navigator.push(context, MaterialPageRoute(builder: (context) => new UserInfo(user)));
        }
      },
      child: new Text("Search"),
    );
  }

  Widget build(context) {
    return new Scaffold(
      body: new Container(
        margin: new EdgeInsets.all(10.0),
        child: new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.all(20.0),
                child: getUserForm(),
              ),
              new Padding(
                padding: new EdgeInsets.all(20.0),
                child: getSearchButton(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

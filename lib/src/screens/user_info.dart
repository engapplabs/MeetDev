import "package:flutter/material.dart";
import "../models/user.dart";
import "../widgets/account_state.dart";

class UserInfo extends StatelessWidget {

  static String TAG = "USER_INFO";
  final User user;

  UserInfo(this.user);

  Widget build(context) {
    return new Scaffold(
      body: new Container(
        margin: new EdgeInsets.all(10.0),
        child: new AccountState(user)
      ),
    );
  }
}

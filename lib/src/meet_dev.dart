import "package:flutter/material.dart";
import "widgets/home.dart";
import "widgets/user_info.dart";

class MeetDev extends StatelessWidget {

  final screenRoutes = <String, WidgetBuilder> {
    Home.TAG: (context) => Home(),
    UserInfo.TAG: (context) => UserInfo(),
  };

  Widget build(context) {
    return new MaterialApp(
      routes: screenRoutes,
      home: new Home(),
    );
  }
}

import "package:flutter/material.dart";
import "screens/home.dart";
import "screens/user_info.dart";

class MeetDev extends StatelessWidget {

  final screenRoutes = <String, WidgetBuilder> {
    Home.TAG: (context) => Home(),
    UserInfo.TAG: (context) => UserInfo(null),
  };

  Widget build(context) {
    return new MaterialApp(
      routes: screenRoutes,
      home: new Home(),
    );
  }
}

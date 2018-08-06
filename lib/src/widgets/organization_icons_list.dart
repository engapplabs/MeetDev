import "package:flutter/material.dart";
import "../models/organization.dart";

class OrganizationIconsList extends StatelessWidget {

  final List<Organization> _organizations;

  OrganizationIconsList(this._organizations);

  List<Widget> _getOrganizations() {
    List<Widget> organizationIcons = [];
    for (var organization in _organizations) {
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
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: _getOrganizations()              
    );
  }
}

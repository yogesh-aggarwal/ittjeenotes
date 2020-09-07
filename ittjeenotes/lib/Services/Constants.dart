import 'package:flutter/material.dart';

class Data {
  static Color bottomNavbarItemInactiveColor = Colors.deepOrange[400];

  static Color getBottomNavbarItemActiveColor(context) {
    return Theme.of(context).accentColor;
  }
}

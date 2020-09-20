import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Color bottomNavbarItemInactiveColor = Colors.deepOrange[400];

Color getBottomNavbarItemActiveColor(context) {
  return Theme.of(context).accentColor;
}

FirebaseFirestore firebase = FirebaseFirestore.instance;

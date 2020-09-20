import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ittjeenotes/Services/Data.dart';
import 'package:rxdart/rxdart.dart';

class Constants {
  static Color bottomNavbarItemInactiveColor = Colors.deepOrange[400];

  static Color getBottomNavbarItemActiveColor(context) {
    return Theme.of(context).accentColor;
  }

  static FirebaseFirestore firebase = FirebaseFirestore.instance;
}

class Data {
  // ignore: close_sinks
  static BehaviorSubject<Map<String, dynamic>> quote =
      new BehaviorSubject.seeded(
    {
      "hash": "L4A13KQ-00?E00tRNLIp~UM|?a%1",
      "quoteImgUrl": "https://i.imgur.com/qtkRT04.jpg",
    },
  );

  static void prepareData() {
    fetchQuote();
  }
}

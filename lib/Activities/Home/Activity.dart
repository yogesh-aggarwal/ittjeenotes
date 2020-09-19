import "package:flutter/material.dart";
import 'package:ittjeenotes/Activities/Home/Quote.dart';
import 'package:ittjeenotes/Widgets/UserIcon.dart';

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "IIT JEE",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                  ),
                ),
                UserIcon(),
              ],
            ),
          ),
          Quote(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Continue Where You Left Off",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

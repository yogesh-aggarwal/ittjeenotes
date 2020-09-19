import "package:flutter/material.dart";
import 'package:ittjeenotes/Widgets/UserIcon.dart';

class PracticeActivity extends StatelessWidget {
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
                    "Practice",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                  ),
                ),
                UserIcon(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

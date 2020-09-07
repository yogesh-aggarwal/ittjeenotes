import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ittjeenotes/Activities/Home/Quote.dart';

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
                Container(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: SvgPicture.asset("assets/icons/user.svg",
                          width: 45, height: 45),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Quote(),
          Container(
            child: Text("Hello World!"),
          )
        ],
      ),
    );
  }
}

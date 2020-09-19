import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ittjeenotes/Activities/UserProfile/Activity.dart';

class UserIcon extends StatelessWidget {
  void openUserProfile(BuildContext context) {
    Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) {
      return UserProfileActivity();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () {
          openUserProfile(context);
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child:
              SvgPicture.asset("assets/icons/user.svg", width: 45, height: 45),
        ),
      ),
    );
  }
}

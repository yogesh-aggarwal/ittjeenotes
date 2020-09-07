import "package:flutter/material.dart";
import 'package:ittjeenotes/Widgets/UserIcon.dart';

class HorizontalSpacer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
    );
  }
}

class SettingsActivity extends StatelessWidget {
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
                    "Settings",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                  ),
                ),
                UserIcon(),
              ],
            ),
          ),
          Container(margin: EdgeInsets.symmetric(vertical: 5)),
          Text(
            "General",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          CheckboxListTile(
            value: true,
            onChanged: (bool value) {},
            title: Text("Show Quote on Home"),
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.all(0),
            subtitle: Text("Shows a power quote on home screen"),
          ),
          Divider(
            height: 30,
          ),
          Text(
            "Notifications",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          CheckboxListTile(
            value: true,
            onChanged: (bool value) {},
            title: Text("Help me study"),
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.all(0),
            subtitle: Text("Show reminders & suggestions"),
          ),
          CheckboxListTile(
            value: true,
            onChanged: (bool value) {},
            title: Text("News"),
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.all(0),
            subtitle: Text("Show latest new about JEE"),
          ),
          Divider(
            height: 30,
          ),
          Text(
            "About",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                OutlineButton(
                  child: Text(
                    "About",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
                HorizontalSpacer(),
                OutlineButton(
                  child: Text(
                    "Purpose",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
                HorizontalSpacer(),
                OutlineButton(
                  child: Text(
                    "The Developer",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

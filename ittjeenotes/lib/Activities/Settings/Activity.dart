import "package:flutter/material.dart";
import 'package:ittjeenotes/Widgets/UserIcon.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class HorizontalSpacer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
    );
  }
}

void showBottomModalSheet(BuildContext context, Widget widget) {
  showMaterialModalBottomSheet(
    context: context,
    builder: (context, scrollController) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: widget,
      );
    },
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
  );
}

void openAboutAppDialog(BuildContext context) {
  showBottomModalSheet(
    context,
    Text("About note here", style: TextStyle(fontSize: 16),),
  );
}

void showPurposeDialog(BuildContext context) {
  showBottomModalSheet(
    context,
    Text("Purpose note here", style: TextStyle(fontSize: 16),),
  );
}

void showDeveloperDialog(BuildContext context) {
  showBottomModalSheet(
    context,
    Text("Developer note here", style: TextStyle(fontSize: 16),),
  );
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
                  onPressed: () {
                    openAboutAppDialog(context);
                  },
                ),
                HorizontalSpacer(),
                OutlineButton(
                  child: Text(
                    "Purpose",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    showPurposeDialog(context);
                  },
                ),
                HorizontalSpacer(),
                OutlineButton(
                  child: Text(
                    "The Developer",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    showDeveloperDialog(context);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

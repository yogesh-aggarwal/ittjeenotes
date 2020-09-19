import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:ittjeenotes/Widgets/UserIcon.dart';

class SubjectCard extends StatelessWidget {
  final String title;
  final int nChapters;
  final String imageLink;
  final Function onTap;

  SubjectCard(
      {@required this.title,
      @required this.nChapters,
      @required this.imageLink,
      @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: Image(
        image: NetworkImage(imageLink),
        width: 45,
        height: 45,
      ),
      subtitle: Text("$nChapters Chapters"),
      onTap: onTap,
      contentPadding: EdgeInsets.all(0),
    );
  }
}

class StudyActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 15, left: 25, right: 25),
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
                      "Notes",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                    ),
                  ),
                  UserIcon(),
                ],
              ),
            ),
            Container(margin: EdgeInsets.symmetric(vertical: 5)),
            Text(
              "Study Resources",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(margin: EdgeInsets.symmetric(vertical: 5)),
            ListTile(
              title: Text("JEE Mains"),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset("assets/icons/jeeMainLogo.jpg", width: 30),
              ),
              contentPadding: EdgeInsets.all(0),
              onTap: () {},
            ),
            ListTile(
              title: Text("JEE Advanced"),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child:
                    Image.asset("assets/icons/jeeAdvancedLogo.jpg", width: 35),
              ),
              contentPadding: EdgeInsets.all(0),
              onTap: () {},
            ),
            Container(margin: EdgeInsets.symmetric(vertical: 10)),
            Text(
              "Subject-wise Notes",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                SubjectCard(
                  title: "Physics",
                  imageLink: "https://bit.ly/358XW21",
                  nChapters: 35,
                  onTap: () {},
                ),
                SubjectCard(
                  title: "Chemistry",
                  imageLink: "https://bit.ly/358XW21",
                  nChapters: 35,
                  onTap: () {},
                ),
                SubjectCard(
                  title: "Maths",
                  imageLink: "https://bit.ly/358XW21",
                  nChapters: 35,
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

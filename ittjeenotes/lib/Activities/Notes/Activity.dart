import "package:flutter/material.dart";
import 'package:ittjeenotes/Activities/Notes/Card.dart';
import 'package:ittjeenotes/Widgets/UserIcon.dart';

class NotesActivity extends StatelessWidget {
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
                      "My Notes",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                    ),
                  ),
                  UserIcon(),
                ],
              ),
            ),
            Column(
              children: [
                SubjectCard(
                  name: "Physics",
                  iconUrl: "https://bit.ly/358XW21",
                  thumbnailUrl: "https://bit.ly/3bAs87u",
                  callback: () {},
                  nChapters: 35,
                ),
                SubjectCard(
                  name: "Chemistry",
                  iconUrl: "https://bit.ly/358XW21",
                  thumbnailUrl: "https://bit.ly/3h6eutN",
                  callback: () {},
                  nChapters: 35,
                ),
                SubjectCard(
                  name: "Maths",
                  iconUrl: "https://bit.ly/358XW21",
                  thumbnailUrl: "https://bit.ly/323zYTF",
                  callback: () {},
                  nChapters: 35,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

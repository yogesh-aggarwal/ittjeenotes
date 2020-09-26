import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ittjeenotes/Activities/Study/Chapter/Activity.dart';
import 'package:ittjeenotes/Services/Types/Study.dart';

// ignore: must_be_immutable
class SubjectActivity extends StatelessWidget {
  final String title;
  final Map<String, Map<String, SubjectChapter>> subject;
  List<String> categories;

  SubjectActivity({@required this.title, @required this.subject}) {
    this.categories = this.subject.keys.toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 25, left: 25, right: 25),
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
                          title,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w800),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  ),
                ),
                Container(margin: EdgeInsets.symmetric(vertical: 15)),
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: categories.map((category) {
                        Map<String, SubjectChapter> currentChapters =
                            subject[category];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              category,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            Container(margin: EdgeInsets.symmetric(vertical: 5)),
                            ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: currentChapters.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      CupertinoPageRoute(
                                        builder: (context) {
                                          return ChapterActivity(
                                            chapter: currentChapters.values
                                                .elementAt(index),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  title: Text(
                                    currentChapters.values
                                        .elementAt(index)
                                        .name,
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

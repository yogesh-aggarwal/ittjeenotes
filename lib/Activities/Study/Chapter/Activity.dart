import 'package:flutter/material.dart';
import 'package:ittjeenotes/Services/Types/Study.dart';

class ChapterActivity extends StatelessWidget {
  final SubjectChapter chapter;

  ChapterActivity({@required this.chapter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Text("Chapter ${chapter.id}"),
          ),
        ),
      ),
    );
  }
}

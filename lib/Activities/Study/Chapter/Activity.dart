import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:ittjeenotes/Services/Constants.dart';
import 'package:ittjeenotes/Services/Types/Study.dart';

class ChapterActivity extends StatelessWidget {
  final SubjectChapter chapter;
  final String subject;

  ChapterActivity({@required this.chapter, @required this.subject});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: FutureBuilder(
                  future: rootBundle.loadString(
                      "assets/notes/${subject.toLowerCase()}/${chapter.id}.md"),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Markdown(
                        physics: BouncingScrollPhysics(),
                        data: snapshot.data,
                        styleSheet: mdStyleSheet,
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

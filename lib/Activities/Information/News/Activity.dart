import 'package:contentful_rich_text/contentful_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:ittjeenotes/Services/Information.dart';
import 'package:ittjeenotes/Services/Types/Information.dart';

class NewsActivity extends StatelessWidget {
  final News currentNews;

  NewsActivity({@required this.currentNews});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child: Column(
              children: [
                Text(
                  currentNews.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                // ContentfulRichText(currentNews.content).documentToWidgetTree,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

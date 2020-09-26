// import 'package:contentful_rich_text/contentful_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:ittjeenotes/Services/Tools.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: Text(
                          currentNews.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                          overflow: TextOverflow.clip,
                        ),
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
                Container(
                  margin: EdgeInsets.only(bottom: 25),
                  child: Text(
                    timeStampToDate(currentNews.datePublished),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
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

import 'package:contentful_rich_text/contentful_rich_text.dart';
import "package:flutter/material.dart";
import 'package:ittjeenotes/Widgets/UserIcon.dart';

class PracticeActivity extends StatelessWidget {
  final content = {
    "nodeType": "document",
    "content": [
      {
        "nodeType": "paragraph",
        "content": [
          {
            "nodeType": "text",
            "value": "Hello",
            "marks": [
              {"type": "bold"}
            ],
          },
          {
            "nodeType": "text",
            "value": " world!",
            "marks": [
              {"type": "italic"}
            ]
          }
        ]
      }
    ]
  };

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
                    "Practice",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                  ),
                ),
                UserIcon(),
              ],
            ),
          ),
          ContentfulRichText(content).documentToWidgetTree,
        ],
      ),
    );
  }
}

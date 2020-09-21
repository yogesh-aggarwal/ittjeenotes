import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class News {
  final String title;
  final String shortContent;
  final Map<String, dynamic> content;
  final Timestamp datePublished;
  final bool isNew;

  News(
      {@required this.title,
      @required this.shortContent,
      @required this.content,
      @required this.datePublished,
      @required this.isNew});
}

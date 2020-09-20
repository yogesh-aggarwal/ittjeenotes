import 'package:flutter/foundation.dart';

class News {
  final String title;
  final String shortContent;
  final Map<String, dynamic> content;
  final bool isNew;

  News(
      {@required this.title,
      @required this.shortContent,
      @required this.content,
      @required this.isNew});
}

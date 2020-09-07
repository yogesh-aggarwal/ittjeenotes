import 'package:flutter/foundation.dart';

class News {
  final String title;
  final String content;
  final bool isNew;

  News({@required this.title, @required this.content, @required this.isNew});
}

Stream<List<News>> getNews() {
  return Stream.value([
    News(title: "First News", content: "Content", isNew: true),
    News(title: "Second News", content: "Content", isNew: true),
    News(title: "Third News", content: "Content", isNew: true),
    News(title: "Fourth News", content: "Content", isNew: true),
    News(title: "Fifth News", content: "Content", isNew: true),
  ]);
}

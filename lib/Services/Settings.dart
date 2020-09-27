import 'package:rxdart/rxdart.dart';

BehaviorSubject<Map<String, bool>> preferences = new BehaviorSubject.seeded(
  {"showQuote": true, "helpStudy": true, "showNews": true},
);

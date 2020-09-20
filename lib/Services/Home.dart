import 'package:ittjeenotes/Services/Constants.dart';
import 'package:rxdart/rxdart.dart';

final BehaviorSubject<Map<String, dynamic>> quote = new BehaviorSubject.seeded(
  {
    "hash": "L4A13KQ-00?E00tRNLIp~UM|?a%1",
    "quoteImgUrl": "https://i.imgur.com/qtkRT04.jpg",
  },
);

void fetchQuote() async {
  quote.add(
    (await firebase.doc("general/today_quote").get()).data(),
  );
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ittjeenotes/Services/Constants.dart';
import 'package:ittjeenotes/Services/Types/Information.dart';
import 'package:rxdart/rxdart.dart';

final BehaviorSubject<List<News>> news = new BehaviorSubject.seeded([]);

void fetchNews() async {
  firebase
      .collection("news")
      .snapshots()
      .listen((QuerySnapshot newsCollection) {
    newsCollection.docChanges.forEach((DocumentChange element) {
      Map<String, dynamic> doc = element.doc.data();
      print(doc);
    });
    List<News> _news = [];

    newsCollection.docs.forEach((QueryDocumentSnapshot documentSnapshot) {
      Map<String, dynamic> doc = documentSnapshot.data();
      _news.add(News(
        title: doc["title"],
        shortContent: doc["shortContent"],
        content: doc["content"],
        datePublished: doc["datePublished"],
        isNew: true,
      ));
    });

    news.add(_news);
  });
  // QuerySnapshot newsCollection = await firebase.collection("news").get();
}

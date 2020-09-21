import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:ittjeenotes/Services/Home.dart';
import 'package:ittjeenotes/Services/Information.dart';

void prepareData() {
  fetchQuote();
  fetchNews();
}

String timeStampToDate(Timestamp timestamp) {
  DateTime dateTime = timestamp.toDate();
  final DateFormat formatter = DateFormat('dd MMMM, yyyy');
  final String formatted = formatter.format(dateTime);
  return formatted;
}

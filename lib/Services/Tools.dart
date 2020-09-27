import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:ittjeenotes/Services/Home.dart';
import 'package:ittjeenotes/Services/Information.dart';
import 'package:ittjeenotes/Services/sqlite.dart';

void prepareData() {
  fetchDatabase();
  fetchQuote();
  fetchNews();
}

String timeStampToDate(Timestamp timestamp) {
  DateTime dateTime = timestamp.toDate();
  final DateFormat formatter = DateFormat('dd MMMM, yyyy');
  final String formatted = formatter.format(dateTime);
  return formatted;
}

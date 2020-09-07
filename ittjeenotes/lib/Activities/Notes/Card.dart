import 'package:flutter/material.dart';

class SubjectCard extends StatelessWidget {
  final String name;
  final String iconUrl;
  final String thumbnailUrl;
  final int nChapters;
  final Function callback;

  SubjectCard(
      {@required this.name,
      @required this.iconUrl,
      @required this.thumbnailUrl,
      @required this.nChapters,
      @required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Color(0xFFCCCCCC), blurRadius: 10)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image(
                image: NetworkImage(iconUrl),
                width: 30,
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: NetworkImage(thumbnailUrl),
                width: MediaQuery.of(context).size.width,
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ittjeenotes/Activities/Information/News/Activity.dart';
import 'package:ittjeenotes/Services/Information.dart';
import 'package:ittjeenotes/Widgets/UserIcon.dart';

class InformationActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
                      "Resources",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                    ),
                  ),
                  UserIcon(),
                ],
              ),
            ),
            Container(margin: EdgeInsets.symmetric(vertical: 5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Latest News",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                OutlineButton(
                  child: Text("Show All"),
                  onPressed: () {},
                )
              ],
            ),
            StreamBuilder(
              initialData: [],
              stream: news.stream,
              builder:
                  (BuildContext context, AsyncSnapshot<List<dynamic>> data) {
                if (data.hasData) {
                  final List<dynamic> news = data.data.length > 3
                      ? data.data.sublist(0, 3)
                      : data.data;
                  if (news.length > 0) {
                    return Column(
                      children: news.map((dynamic currentNews) {
                        return ListTile(
                          title: Text(
                            currentNews.title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            currentNews.shortContent,
                            overflow: TextOverflow.ellipsis,
                          ),
                          leading: SvgPicture.asset(
                            "assets/icons/news.svg",
                            width: 35,
                          ),
                          contentPadding: EdgeInsets.all(0),
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) {
                                  return NewsActivity(currentNews: currentNews);
                                },
                              ),
                            );
                          },
                        );
                      }).toList(),
                    );
                  } else {
                    return Container(
                      child: Text(
                        "No news at this stage!",
                        textAlign: TextAlign.center,
                      ),
                    );
                  }
                } else {
                  return Container(
                    child: Text(
                      "No news at this stage!",
                      textAlign: TextAlign.center,
                    ),
                  );
                }
              },
            ),
            Container(margin: EdgeInsets.symmetric(vertical: 10)),
            Text(
              "Important Dates",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(margin: EdgeInsets.symmetric(vertical: 5)),
            ListTile(
              title: Text("JEE Mains"),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset("assets/icons/jeeMainLogo.jpg", width: 30),
              ),
              contentPadding: EdgeInsets.all(0),
              onTap: () {},
            ),
            ListTile(
              title: Text("JEE Advanced"),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child:
                    Image.asset("assets/icons/jeeAdvancedLogo.jpg", width: 35),
              ),
              contentPadding: EdgeInsets.all(0),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

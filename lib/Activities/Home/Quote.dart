import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:ittjeenotes/Services/Constants.dart';

class Quote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.6,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: StreamBuilder(
            stream: Data.quote.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final Map<String, dynamic> data = snapshot.data;
                return BlurHash(
                  hash: data["hash"] as String,
                  image: data["quoteImgUrl"] as String,
                  imageFit: BoxFit.cover,
                );
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }
}

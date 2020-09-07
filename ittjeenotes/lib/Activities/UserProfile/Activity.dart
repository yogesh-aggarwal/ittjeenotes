import "package:flutter/material.dart";

class UserProfileActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
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
                        "Hello, User",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w800),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
              Container(margin: EdgeInsets.symmetric(vertical: 5)),
              Text("Hello User!")
            ],
          ),
        ),
      ),
    );
  }
}

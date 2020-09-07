import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  double radius = 20;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    controller.addListener(() {
      setState(() {});
      if (controller.isCompleted) {
        controller.forward();
      } else if (controller.isDismissed) {
        controller.reverse();
      }
    });
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.ease,
    );
    animation = Tween(begin: 20.0, end: 40.0).animate(animation);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Hello World!")),
          elevation: 0,
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                double.parse(animation.value),
              ),
              color: Colors.green,
            ),
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}

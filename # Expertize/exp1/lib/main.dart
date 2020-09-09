import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:scratcher/scratcher.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scratchKey = GlobalKey<ScratcherState>();

  @override
  Widget build(BuildContext context) {
    double value = 20;
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Hello World!")),
            elevation: 0,
          ),
          body: Column(
            children: [
              SleekCircularSlider(
                min: 0,
                max: 1000,
                initialValue: value,
                appearance: CircularSliderAppearance(),
                onChange: (double value) {
                  // print(value);
                },
              ),
              OutlineButton.icon(
                onPressed: () {
                  setState(() {
                    value = 500;
                  });
                },
                icon: Icon(Icons.send),
                label: Text("Start"),
              )
            ],
          )),
    );
  }
}

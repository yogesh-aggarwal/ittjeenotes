import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ittjeenotes/Activities/Home/Activity.dart';
import 'package:ittjeenotes/Activities/Information/Activity.dart';
import 'package:ittjeenotes/Activities/Study/Activity.dart';
import 'package:ittjeenotes/Activities/Practice/Activity.dart';
import 'package:ittjeenotes/Activities/Settings/Activity.dart';
import 'package:ittjeenotes/Services/Constants.dart';
import 'package:ittjeenotes/Services/Tools.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Poppins",
        backgroundColor: Color(0xff2C2B4B),
      ),
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentPageIndex = 2;
  PageController _pageController = PageController(initialPage: 2);

  @override
  void initState() {
    prepareData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    prepareData();
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              _currentPageIndex = value;
            });
          },
          children: [
            StudyActivity(),
            PracticeActivity(),
            HomeActivity(),
            InformationActivity(),
            SettingsActivity(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentPageIndex,
        showElevation: true,
        onItemSelected: (int index) {
          setState(() {
            _currentPageIndex = index;
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          });
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.book),
            title: Text("Study"),
            activeColor: getBottomNavbarItemActiveColor(context),
            textAlign: TextAlign.center,
            inactiveColor: bottomNavbarItemInactiveColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.edit),
            title: Text("Practice"),
            activeColor: getBottomNavbarItemActiveColor(context),
            textAlign: TextAlign.center,
            inactiveColor: bottomNavbarItemInactiveColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            activeColor: getBottomNavbarItemActiveColor(context),
            textAlign: TextAlign.center,
            inactiveColor: bottomNavbarItemInactiveColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.info),
            title: Text("Information.dart"),
            activeColor: getBottomNavbarItemActiveColor(context),
            textAlign: TextAlign.center,
            inactiveColor: bottomNavbarItemInactiveColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
            activeColor: getBottomNavbarItemActiveColor(context),
            textAlign: TextAlign.center,
            inactiveColor: bottomNavbarItemInactiveColor,
          ),
        ],
      ),
    );
  }
}

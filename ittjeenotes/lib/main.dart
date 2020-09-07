import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:ittjeenotes/Activities/Home/Activity.dart';
import 'package:ittjeenotes/Activities/Notes/Activity.dart';
import 'package:ittjeenotes/Activities/Practice/Activity.dart';
import 'package:ittjeenotes/Activities/Resources/Activity.dart';
import 'package:ittjeenotes/Activities/Settings/Activity.dart';
import 'package:ittjeenotes/Services/Constants.dart';

void main() {
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
  int _currentPageIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
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
            NotesActivity(),
            PracticeActivity(),
            HomeActivity(),
            ResourcesActivity(),
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
            title: Text("Notes"),
            activeColor: Data.getBottomNavbarItemActiveColor(context),
            textAlign: TextAlign.center,
            inactiveColor: Data.bottomNavbarItemInactiveColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.edit),
            title: Text("Practice"),
            activeColor: Data.getBottomNavbarItemActiveColor(context),
            textAlign: TextAlign.center,
            inactiveColor: Data.bottomNavbarItemInactiveColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            activeColor: Data.getBottomNavbarItemActiveColor(context),
            textAlign: TextAlign.center,
            inactiveColor: Data.bottomNavbarItemInactiveColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.info),
            title: Text("Resources"),
            activeColor: Data.getBottomNavbarItemActiveColor(context),
            textAlign: TextAlign.center,
            inactiveColor: Data.bottomNavbarItemInactiveColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
            activeColor: Data.getBottomNavbarItemActiveColor(context),
            textAlign: TextAlign.center,
            inactiveColor: Data.bottomNavbarItemInactiveColor,
          ),
        ],
      ),
    );
  }
}

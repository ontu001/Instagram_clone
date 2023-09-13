import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone/screens/ui/home.dart';
import 'package:instagram_clone/screens/ui/profile.dart';
import 'package:instagram_clone/screens/ui/reels.dart';
import 'package:instagram_clone/screens/ui/search.dart';
import 'package:instagram_clone/screens/ui/shop.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
//selected item
  int _selectedIndex = 0;
  void _selectedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //Navigation screens
  final List<Widget> _pages = [Home(), Search(), Reels(), Shop(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body
      body: _pages[_selectedIndex],

      //Bottom NAvigation bar
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.black),
          type: BottomNavigationBarType.fixed,
          elevation: 2,
          currentIndex: _selectedIndex,
          onTap: _selectedItem,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'Reels'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}

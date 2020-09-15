import 'package:flutter/material.dart';
import 'package:nike_flutter_app/application_flow/home_page.dart';
import 'package:nike_flutter_app/widgets/home_page_navbar.dart';

import 'home_page.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {

  int _selectedIndex = 0;
  static List<Widget> screens = [
    HomePage(),
    Text("Explore"),
    Text("Inbox"),
    Text("Profile")
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: screens[_selectedIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.explore), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text(""))
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
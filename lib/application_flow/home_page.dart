import 'package:flutter/material.dart';
import 'package:nike_flutter_app/widgets/home_page_navbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              HomePageNavbar(),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.tune),
                  SizedBox(width: 15),
                  Text("Filter by size")
                ],
              )
            ]
          ,)
        ),
      ),
    );
  }
}
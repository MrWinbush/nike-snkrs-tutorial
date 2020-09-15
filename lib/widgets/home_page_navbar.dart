import 'package:flutter/material.dart';

class HomePageNavbar extends StatefulWidget {
  @override
  _HomePageNavbarState createState() => _HomePageNavbarState();
}

class _HomePageNavbarState extends State<HomePageNavbar> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        GestureDetector(
          onTap: null,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Feed", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
          )
        ),
        GestureDetector(
          onTap: null,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("In Stock", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
          )
        ),
        GestureDetector(
          onTap: null,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Upcoming", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
          )
        ),
        Spacer(),
        FlatButton(child: Icon(Icons.search), onPressed: null)
      ]
    );
  }
}
import 'package:flutter/material.dart';
import 'package:nike_flutter_app/login_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginButton("Log In", Colors.white, Colors.black, borderColor: Colors.grey[300],),
              SizedBox(width: 10,),
              LoginButton("Join Now", Colors.black, Colors.white)
            ],
          )
        ),
      )
    );
  }
}
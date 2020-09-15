import 'package:flutter/material.dart';
import 'package:nike_flutter_app/application_flow/root_page.dart';
import 'package:nike_flutter_app/widgets/login_button.dart';
import 'package:nike_flutter_app/widgets/pre_login_marketing_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final controller = PageController(initialPage: 0);
  List<PreLoginInfo> preLoginInfo = [
      PreLoginInfo("", "Welcome to Nike SNKRS. Your ultimate sneaker destination", "snkrs.png"),
      PreLoginInfo("Purchase Quickly", "Buy sneakers in seconds, direclty within the app. Store all your info to expedite the process.", "airJordan1s.jpg"),
      PreLoginInfo("Stay a Step Ahead", "Set notifications for upcoming releases. Share news, photos and videos with friends.", "jordanChileRed.jpg"),
      PreLoginInfo("Get The Story", "learn about the inspiration, benefits and heritage of featured sneakers straight from the source.", "kobe5Pronto.jpg")
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                child: PageView(
                  controller: controller,
                  scrollDirection: Axis.horizontal, 
                  children: this.preLoginInfo.map((loginMarketing) => PreLoginMarketingScreen(loginMarketing)).toList()
                  )
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 20),
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: preLoginInfo.length,
                    effect: SlideEffect(
                      dotWidth: 6,
                      dotHeight: 6,
                      activeDotColor: Colors.black
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginButton("Log In", Colors.white, Colors.black, borderColor: Colors.grey[300],),
                    SizedBox(width: 10,),
                    LoginButton("Join Now", Colors.black, Colors.white)
                  ],
                ),
                FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RootPage()));
                  }, 
                  child: Text("Continue as Guest")
                ),
                SizedBox(height: 40,),
              ],
            ),
        ),
      )
    );
  }
}

class PreLoginInfo {
  String title;
  String description;
  String imagePath;

  PreLoginInfo(this.title, this.description, this.imagePath);
}
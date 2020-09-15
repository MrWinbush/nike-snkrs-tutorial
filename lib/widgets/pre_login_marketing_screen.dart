import 'package:flutter/material.dart';

import '../application_flow/login.dart';

class PreLoginMarketingScreen extends StatelessWidget {
  PreLoginInfo preLoginInfo;

  PreLoginMarketingScreen(this.preLoginInfo);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/${this.preLoginInfo.imagePath}', height: 300,),
            Text(this.preLoginInfo.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
              child: Text(this.preLoginInfo.description, textAlign: TextAlign.center),
            )
          ],
        ),
    );
  }
}
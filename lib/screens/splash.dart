import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/screens/role_selection.dart';

class Splash extends StatefulWidget {

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  startTime() async{
    var duration = Duration(seconds: 3);
    return new Timer(duration,route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => RoleSelection()
    )
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Image.asset(
        "assets/images/splash.png",
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      ),
    );
  }
}


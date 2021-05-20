import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/screens/nationwide_leaderboard/leaderboard_screen.dart';
import 'package:flutter_top_tipper/screens/on_boarding/onboarding_screen.dart';
import 'package:flutter_top_tipper/screens/role_selection.dart';
import 'package:flutter_top_tipper/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NationWideLeaderBoard(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/get_started/get_started.dart';
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
      theme: ThemeData().copyWith(
        primaryColor: orange
      ),
      home: GetStarted(),
    );
  }
}

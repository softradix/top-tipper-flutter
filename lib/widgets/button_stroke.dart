import 'package:flutter/material.dart';

class MyStrokedButton extends StatelessWidget {
  MyStrokedButton(
      {@required this.onCliCk, @required this.text, @required this.textColor, @required this.strokeColor});

  final String text;
  final Color textColor;
  final Color strokeColor;
  final Function onCliCk;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: OutlinedButton(
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 16.0),
        ),
        onPressed: onCliCk,
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 2.0, color: strokeColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
      ),
    );
  }
}

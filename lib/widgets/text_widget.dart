import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget(
      {@required this.text,
      @required this.textSize,
      @required this.textColor,
      @required this.textFontWeight,
      this.textAlign,this.textMaxLines});

  final String text;
  final double textSize;
  final Color textColor;
  final FontWeight textFontWeight;
  final TextAlign textAlign;
  final int textMaxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: textSize,
          color: textColor,
          fontFamily: 'Montserrat',
          fontWeight: textFontWeight,
          fontStyle: FontStyle.normal),
      textAlign: textAlign,
      maxLines: textMaxLines,
    );
  }
}

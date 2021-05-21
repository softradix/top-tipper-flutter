import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  MyElevatedButton({@required this.buttonText,@required this.textColor,@required this.buttonBgColor,@required this.onPress});
  final String buttonText;
  final Color textColor;
  final Color buttonBgColor;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        onPressed: onPress,
        child: Text(
          buttonText.toUpperCase(),
          style: TextStyle(color: textColor,fontSize: 16.0,fontWeight: FontWeight.w700),
        ),
        style: ElevatedButton.styleFrom(
            primary: buttonBgColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            )),
      ),
    );
  }
}

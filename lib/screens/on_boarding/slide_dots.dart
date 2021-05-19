import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: Duration(microseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 5.0),
    height: isActive?10:8,
      width: isActive?10:8,
    decoration: BoxDecoration(
      color: isActive?Colors.white:orange,
      border: Border.all(
        color: orange,
        width: 2
      ),
      borderRadius: BorderRadius.all(Radius.circular(12.0))
    ),);
  }
}

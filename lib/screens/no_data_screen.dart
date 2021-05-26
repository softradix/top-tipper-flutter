import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class NoDataScreen extends StatelessWidget {
  NoDataScreen({@required this.imagePath, @required this.text});

  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageWidget(
              imagePath: imagePath,
              width: 250.0,
              height: 250.0,
              isFill: false),
          TextWidget(
              text: text,
              textSize: 18.0,
              textColor: darkGrey,
              textFontWeight: FontWeight.w400),
        ],
      ),
    );
  }
}

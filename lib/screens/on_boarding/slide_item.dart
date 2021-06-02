import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';

class SlideItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subTitle;

  SlideItem({this.imagePath, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 60.0,
        ),
        Expanded(
            child: ImageWidget(
                imagePath: imagePath,
                width: double.infinity,
                height: double.infinity,
                isFill: false)),
        SizedBox(
          height: 50.0,
        ),
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            subTitle,
            style: TextStyle(fontSize: 14.0, color: Color(0xff8B8885)),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
      ],
    );
  }
}

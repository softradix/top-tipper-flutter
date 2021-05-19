import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/screens/on_boarding/on_board_slide_model.dart';
import 'package:flutter_top_tipper/screens/on_boarding/slide_dots.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';

class SlideItem extends StatelessWidget {
  final int index;

  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 60.0,),
        Expanded(
            child: ImageWidget(
                imagePath: slide_list[index].imagePath,
                width: double.infinity,
                height: double.infinity,
                isFill: false)),
        SizedBox(
          height: 50.0,
        ),
        Text(
          slide_list[index].title,
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
            slide_list[index].subTitle,
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

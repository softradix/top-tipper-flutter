import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class MyImageButton extends StatelessWidget {
  MyImageButton({@required this.imagePath,@required this.name,@required this.bgColor,this.imageWidth,this.imageHeight});
  final String imagePath;
  final String name;
  final Color bgColor;
  final double imageWidth;
  final double imageHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin:
      EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageWidget(
              imagePath: imagePath,
              width: imageWidth,
              height: imageHeight,
              isFill: false),
          SizedBox(width: 8.0,),
          TextWidget(
            text: name,
            textSize: 16.0,
            textColor: Colors.white,
            textFontWeight: FontWeight.w700,
            textAlign: TextAlign.center,
            textMaxLines: 2,),
        ],
      ),
    );
  }
}

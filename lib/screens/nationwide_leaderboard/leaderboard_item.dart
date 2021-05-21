import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

import '../../colors.dart';

class LeaderBoardItem extends StatelessWidget {
  LeaderBoardItem({@required this.imagePath, @required this.name, @required this.points,this.circleImageBackColor});
  final String imagePath;
  final String name;
  final String points;
  final Color circleImageBackColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:
        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
        padding:
        EdgeInsets.only(left: 10.0,right: 20.0,top: 6.0,bottom: 6.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 30.0,
              height: 30.0,
              child: CircleAvatar(
                backgroundColor: circleImageBackColor,
                child: ImageWidget(
                    imagePath: imagePath,
                    width: 16.0,
                    height: 16.0,
                    isFill: false),
              ),
            ),
            Expanded(
              child: TextWidget(
                text: name,
                textSize: 16.0,
                textColor: black1,
                textFontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
                textMaxLines: 2,),
            ),
            TextWidget(
              text: points,
              textSize: 16.0,
              textColor: orange,
              textFontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
              textMaxLines: 2,),
          ],
        ),
      );
  }
}

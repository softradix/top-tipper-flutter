import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class ReceiveTipListItem extends StatelessWidget {
  ReceiveTipListItem(
      {this.imagePath, this.name, this.lastMessage, @required this.onTap});

  final String imagePath;
  final String name;
  final String lastMessage;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60.0,
        margin: EdgeInsets.symmetric(vertical:7.0,horizontal: 20.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: black2,
              offset: Offset(2.0,2.0)
            ),
            BoxShadow(
                color: black2,
                offset: Offset(-2.0,-2.0)
            )
          ]
        ),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextWidget(
                          text: "Lorem Ipsum is simply dummy text of the printing.",
                          textSize: 10.0,
                          textColor: black1,
                          textFontWeight: FontWeight.w400,
                          textMaxLines: 2,
                        ),
                        SizedBox(height: 2.0,),
                        TextWidget(
                          text: "Los Angeles, California",
                          textSize: 7.0,
                          textColor: darkGrey,
                          textFontWeight: FontWeight.w400,
                          textMaxLines: 1,
                        ),
                      ],
                    ),
                  ),
                  TextWidget(
                    text: "${String.fromCharCodes(new Runes('\u0024'))}10.00",
                    textSize: 12.0,
                    textColor: orange,
                    textFontWeight: FontWeight.w700,
                    textMaxLines: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

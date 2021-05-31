import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class ContactsListItem extends StatelessWidget {
  ContactsListItem(
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
            Container(
              width: 34.0,
              height: 34.0,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: ImageWidget(
                    imagePath: imagePath,
                    width: 34.0,
                    height: 34.0,
                    isFill: false),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextWidget(
                          text: "john",
                          textSize: 14.0,
                          textColor: black1,
                          textFontWeight: FontWeight.w700,
                          textMaxLines: 1,
                        ),
                        TextWidget(
                          text: "Los Angeles, California",
                          textSize: 12.0,
                          textColor: lightGrey,
                          textFontWeight: FontWeight.w400,
                          textMaxLines: 1,
                        ),
                      ],
                    ),
                  ),
                  TextWidget(
                    text: "Invite",
                    textSize: 12.0,
                    textColor: orange,
                    textFontWeight: FontWeight.w500,
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

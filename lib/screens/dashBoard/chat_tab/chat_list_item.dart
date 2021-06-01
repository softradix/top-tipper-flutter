import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class ChatListItem extends StatelessWidget {
  ChatListItem({this.imagePath,this.name,this.lastMessage,@required this.onTap});
  final String imagePath;
  final String name;
  final String lastMessage;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 76.0,
                      height: 76.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: ImageWidget(
                            imagePath: imagePath,
                            width: 76.0,
                            height: 76.0,
                            isFill: false),
                      ),
                    ),
                    Positioned(
                      bottom: 5.0,
                      right: 10.0,
                      child: Container(
                        width: 16.0,
                        height: 16.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100.0)),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10.0,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextWidget(
                          text: name,
                          textSize: 18.0,
                          textColor: black1,
                          textFontWeight: FontWeight.w700,textMaxLines: 1,),
                      TextWidget(
                          text: lastMessage,
                          textSize: 14.0,
                          textColor: darkGrey,
                          textFontWeight: FontWeight.w400,textMaxLines: 2,),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: lightGrey,
            )
          ],
        ),
      ),
    );
  }
}

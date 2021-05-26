import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class ChatListItem extends StatefulWidget {
  const ChatListItem({Key key}) : super(key: key);

  @override
  _ChatListItemState createState() => _ChatListItemState();
}

class _ChatListItemState extends State<ChatListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0,vertical:5.0),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: 76.0,
                    height: 76.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: ImageWidget(
                          imagePath: "ic_user_circle.png",
                          width: 76.0,
                          height: 76.0,
                          isFill: true),
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
                        borderRadius: BorderRadius.circular(100.0)
                      ),
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
              Column(
                children: [
                  TextWidget(text: "John Russell", textSize: 18.0, textColor: black1, textFontWeight: FontWeight.w700),
                  TextWidget(text: "Hello Emily.", textSize: 14.0, textColor: darkGrey, textFontWeight: FontWeight.w400),
                ],
              ),
            ],
          ),
          Divider(color: Color(0xffCDCDCD),)
        ],
      ),
    );
  }
}

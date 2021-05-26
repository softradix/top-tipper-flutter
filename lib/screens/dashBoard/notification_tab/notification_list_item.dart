import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class NotificationListItem extends StatelessWidget {
  NotificationListItem({this.title, this.city, this.date});

  final String title;
  final String city;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextWidget(
                            text: title,
                            textSize: 14.0,
                            textColor: black1,
                            textFontWeight: FontWeight.w700,
                            textMaxLines: 1,
                          ),
                        ),
                        TextWidget(
                            text: date,
                            textSize: 10.0,
                            textColor: darkGrey,
                            textFontWeight: FontWeight.w400),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 50.0,top: 3.0),
                      child: TextWidget(
                        text: city,
                        textSize: 12.0,
                        textColor: darkGrey,
                        textFontWeight: FontWeight.w400,
                        textMaxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Color(0xffCDCDCD),
          )
        ],
      ),
    );
  }
}

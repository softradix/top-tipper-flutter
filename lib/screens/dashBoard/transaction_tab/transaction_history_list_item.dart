import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class TransactionHistoryListItem extends StatelessWidget {
  TransactionHistoryListItem({this.imagePath,this.name,this.city,this.date,this.price});
  final String imagePath;
  final String name;
  final String city;
  final String date;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: ImageWidget(
                          imagePath: imagePath,
                          width: 50.0,
                          height: 50.0,
                          isFill: true),
                    ),
                  ),
                  Positioned(
                    bottom: 5.0,
                    right: 5.0,
                    child: Visibility(
                      visible: false,
                      child: Container(
                        width: 10.0,
                        height: 10.0,
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
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextWidget(
                              text: name,
                              textSize: 14.0,
                              textColor: black1,
                              textFontWeight: FontWeight.w700,textMaxLines: 1,),
                        ),
                        Icon(Icons.arrow_forward_rounded,color: darkGrey,)
                      ],
                    ),
                    TextWidget(
                        text: city,
                        textSize: 12.0,
                        textColor: darkGrey,
                        textFontWeight: FontWeight.w400,textMaxLines: 1,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextWidget(
                            text: date,
                            textSize: 8.0,
                            textColor: darkGrey,
                            textFontWeight: FontWeight.w400,textMaxLines: 1,),
                        ),
                        TextWidget(
                          text: "${String.fromCharCodes(new Runes('\u0024'))}$price",
                          textSize: 18.0,
                          textColor: orange,
                          textFontWeight: FontWeight.w700,textMaxLines: 1,)
                      ],
                    ),
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
    );
  }
}

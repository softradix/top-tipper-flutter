import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class TransactionHistoryPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            height: 300.0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            padding: EdgeInsets.only(
                left: 20.0, right: 20.0, bottom: 20.0, top: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextWidget(
                  text: "John Russell",
                  textSize: 18.0,
                  textColor: black1,
                  textFontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                ),
                TextWidget(
                    text: "${String.fromCharCodes(new Runes('\u0024'))}120.00",
                    textSize: 14.0,
                    textColor: orange,
                    textFontWeight: FontWeight.w700,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    TextWidget(
                        text: "Address:",
                        textSize: 10.0,
                        textColor: darkGrey,
                        textFontWeight: FontWeight.w400),
                    SizedBox(
                      width: 35.0,
                    ),
                    Expanded(
                      child: TextWidget(
                        text:
                            "15282 Skunk River Rd,Los Angeles, California, 84302",
                        textSize: 12.0,
                        textColor: black1,
                        textFontWeight: FontWeight.w500,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    TextWidget(
                        text: "Date:",
                        textSize: 10.0,
                        textColor: darkGrey,
                        textFontWeight: FontWeight.w400),
                    SizedBox(
                      width: 50.0,
                    ),
                    Expanded(
                      child: TextWidget(
                          text: "04 Feb, 2021",
                          textSize: 12.0,
                          textColor: black1,
                          textFontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: TextWidget(
                      text:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      textSize: 10.0,
                      textColor: darkGrey,
                      textFontWeight: FontWeight.w500),
                ),
                Container(
                  height: 40.0,
                  child: OutlinedButton(
                    child: Text(
                      "ok",
                      style: TextStyle(color: orange, fontSize: 16.0),
                    ),
                    onPressed: () {
                      Navigator. pop(context, false);
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2.0, color: orange),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 0.0,
            child: Container(
              margin: EdgeInsets.all(10.0),
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100.0)),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: ImageWidget(
                  imagePath: "demo_user.png",
                  width: 80.0,
                  height: 80.0,
                  isFill: false,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

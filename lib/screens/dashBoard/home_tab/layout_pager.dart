import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class PagerViewLayout extends StatefulWidget {
  const PagerViewLayout({Key key}) : super(key: key);

  @override
  _PagerViewLayoutState createState() => _PagerViewLayoutState();
}

class _PagerViewLayoutState extends State<PagerViewLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          PageView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              height: 200.0,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      TextWidget(
                          text: "Congratulations",
                          textSize: 18.0,
                          textColor: black1,
                          textFontWeight: FontWeight.w700),
                      SizedBox(
                        height: 4.0,
                      ),
                      TextWidget(
                          text:
                          "You received a tip from John Russell. Keep up the great work!",
                          textSize: 12.0,
                          textColor: black1,
                          textFontWeight: FontWeight.w400),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 11.0),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyElevatedButton(
                  buttonText: "My Clients",
                  textColor: Colors.white,
                  buttonBgColor: orange,
                  onPress: () {}),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15.0),
                child: TextWidget(
                    text: AppStringConstants.SCAN_QR,
                    textSize: 12.0,
                    textColor: orange,
                    textFontWeight: FontWeight.w500,textAlign: TextAlign.center,),
              )
            ],
          )
        ],
      ),
    );
  }
}

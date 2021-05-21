import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orange,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0)),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 0.0,
                      child: ImageWidget(imagePath: "side_brush_mask.png", width: 145.0, height: 140.0, isFill: false)),
                ],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top:20.0,bottom: 10.0),
            child: TextWidget(
                text: AppStringConstants.NEW_TO_TOP_TIPPER_SIGN_UP,
                textSize: 14.0,
                textColor: Colors.white,
                textFontWeight: FontWeight.w700,
                textAlign: TextAlign.center),
          ),
          Container(
            margin: EdgeInsets.only(top:10.0,bottom: 40.0),
            child: MyElevatedButton(buttonText:AppStringConstants.SIGN_UP, textColor: orange,
                buttonBgColor: Colors.white, onPress: (){

                }),
          )
        ],
      ),
    );
  }
}

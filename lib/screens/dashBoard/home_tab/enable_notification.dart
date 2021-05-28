import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/button_stroke.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class EnableNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.keyboard_backspace_rounded),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: TextWidget(
            text: AppStringConstants.Enable_Notifications,
            textSize: 18.0,
            textColor: Colors.white,
            textFontWeight: FontWeight.w700),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageWidget(
                  imagePath: "ic_notification_wave.png",
                  width: 200.0,
                  height: 200.0,
                  isFill: false),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0),
                child: TextWidget(
                    text: "Enable notifications to stay in \n the loop.",
                    textSize: 12.0,
                    textColor: black1,
                    textFontWeight: FontWeight.w500,textAlign: TextAlign.center,),
              ),
              MyElevatedButton(
                  buttonText: "enable",
                  textColor: Colors.white,
                  buttonBgColor: orange,
                  onPress: () {}),
              SizedBox(height: 20.0,),
              MyStrokedButton(onCliCk: (){
                Navigator.pop(context);
              }, text: "Skip".toUpperCase(), textColor: orange, strokeColor: orange),
            ],
          ),
        ),
      ),
    );
  }
}

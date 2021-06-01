import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/screens/dashBoard/home_tab/enable_notification.dart';
import 'package:flutter_top_tipper/widgets/button_stroke.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

import '../../../../colors.dart';

class ButtonsViewsOnDetails extends StatelessWidget {
  const ButtonsViewsOnDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25.0,left: 20.0,right: 20.0),
                    child: TextWidget(
                      text: AppStringConstants.REQUEST_TO_HOME_OWENER,
                      textSize: 12.0,
                      textColor: black1,
                      textFontWeight: FontWeight.w500,textAlign: TextAlign.center,),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25.0,left: 20.0,right: 20.0,bottom: 20.0),
                    child: TextWidget(
                        text: AppStringConstants.TIP_PROFILE_UP_TO_DATE,
                        textSize: 12.0,
                        textColor: black1,
                        textFontWeight: FontWeight.w400,textAlign: TextAlign.center),
                  ),
                  Visibility(visible:false,child: MyElevatedButton(buttonText: AppStringConstants.APPROVAL_PENDING, textColor: Colors.white, buttonBgColor: orange, onPress: (){})),
                  MyElevatedButton(buttonText: AppStringConstants.SEND_REQUEST, textColor: Colors.white, buttonBgColor: orange, onPress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EnableNotification()));
                  }),
                  SizedBox(height: 20.0,),
                  Visibility(visible:false,child: MyStrokedButton(onCliCk: (){}, text: AppStringConstants.CANCEL_REQUEST, textColor: orange, strokeColor: orange))
                ],),
              Container(
                margin: EdgeInsets.only(bottom: 20.0,left: 20.0,right: 20.0),
                child: Column(
                  children: [
                    SizedBox(height: 50.0,),
                    TextWidget(
                        text: AppStringConstants.REQUEST_RELATIONSHIP,
                        textSize: 12.0,
                        textColor: black1,
                        textFontWeight: FontWeight.w500,textAlign: TextAlign.center),
                    SizedBox(height: 10.0,),
                    TextWidget(
                        text: AppStringConstants.SET_UP_MY_ACCOUNT,
                        textSize: 12.0,
                        textColor: orange,
                        textFontWeight: FontWeight.w500,textAlign: TextAlign.center),
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}

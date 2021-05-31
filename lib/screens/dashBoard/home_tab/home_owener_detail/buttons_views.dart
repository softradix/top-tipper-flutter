import 'package:flutter/material.dart';
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
                      text: "Send a request to the homeowner to establish a TopTipper relationship with them. They will get notified of the request, approve the relationship, and the tipping shall begin!",
                      textSize: 12.0,
                      textColor: black1,
                      textFontWeight: FontWeight.w500,textAlign: TextAlign.center,),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25.0,left: 20.0,right: 20.0,bottom: 20.0),
                    child: TextWidget(
                        text: "Tip: Make sure your profile is up to date, and your profile picture is clear and visible.",
                        textSize: 12.0,
                        textColor: black1,
                        textFontWeight: FontWeight.w400,textAlign: TextAlign.center),
                  ),
                  Visibility(visible:false,child: MyElevatedButton(buttonText: "Approval pending", textColor: Colors.white, buttonBgColor: orange, onPress: (){})),
                  MyElevatedButton(buttonText: "Send Request", textColor: Colors.white, buttonBgColor: orange, onPress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EnableNotification()));
                  }),
                  SizedBox(height: 20.0,),
                  Visibility(visible:false,child: MyStrokedButton(onCliCk: (){}, text: "Cancel Request", textColor: orange, strokeColor: orange))
                ],),
              Container(
                margin: EdgeInsets.only(bottom: 20.0,left: 20.0,right: 20.0),
                child: Column(
                  children: [
                    SizedBox(height: 50.0,),
                    TextWidget(
                        text: "In order to request a relationship and receive tips, please setup your Stripe payment account.",
                        textSize: 12.0,
                        textColor: black1,
                        textFontWeight: FontWeight.w500,textAlign: TextAlign.center),
                    SizedBox(height: 10.0,),
                    TextWidget(
                        text: "Set up my account!",
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

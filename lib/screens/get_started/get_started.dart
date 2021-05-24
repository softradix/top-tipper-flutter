import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/get_started/oval_shape_button_with_icon.dart';
import 'package:flutter_top_tipper/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';
import '../../app_string_constants.dart';

class GetStarted extends StatefulWidget {

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orange,
      body: SafeArea(
        child: Stack(
          children: [
            ImageWidget(
                imagePath: "bg_leader_board.png",
                width: double.infinity,
                height: double.infinity,
                isFill: true),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ImageWidget(
                        imagePath: "top_tipper_logo.png",
                        width: 100.0,
                        height: 60.0,
                        isFill: true),
                    SizedBox(
                      height: 4.0,
                    ),
                    TextWidget(
                        text: "${String.fromCharCodes(new Runes('\u0024'))}0",
                        textSize: 40.0,
                        textColor: Colors.white,
                        textFontWeight: FontWeight.w700),
                    TextWidget(
                        text:
                        AppStringConstants.CREATE_ACCOUNT_TO_SECURE_ACCOUNT,
                        textSize: 12.0,
                        textColor: Colors.white,
                        textFontWeight: FontWeight.w500,
                        textAlign: TextAlign.center),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextWidget(
                        text: "0 ${AppStringConstants.POINTS}",
                        textSize: 16.0,
                        textColor: Colors.white,
                        textFontWeight: FontWeight.w700,
                        textAlign: TextAlign.center),
                    TextWidget(
                        text: AppStringConstants.CREATE_ACCOUNT_TO_EARN_POINTS,
                        textSize: 12.0,
                        textColor: Colors.white,
                        textFontWeight: FontWeight.w500,
                        textAlign: TextAlign.center),
                    SizedBox(
                      height: 50.0,
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 40.0),
                          child: TextWidget(
                              text: AppStringConstants.GET_STARTED_DESCRIPTION,
                              textSize: 14.0,
                              textColor: black1,
                              textFontWeight: FontWeight.w500,
                              textAlign: TextAlign.center),
                        ),
                        SizedBox(height: 40.0,),
                        MyImageButton(imagePath: "apple_icon.png",
                            name: AppStringConstants.SIGN_UP_WITH_APPLE,
                        bgColor: Colors.black,imageWidth: 24.0,imageHeight: 24.0,addMargin: true),
                        SizedBox(height: 20.0,),
                        MyElevatedButton(
                            buttonText: AppStringConstants.REGISTER_WITH_EMAIL,
                            textColor: Colors.white,
                            buttonBgColor: orange,
                            onPress: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                            }),
                        SizedBox(height: 20.0,),
                        MyImageButton(imagePath: "icon_stripe.png",
                          name: AppStringConstants.CONNECT_WITH_STRIPE,
                          bgColor: stripeBlue,imageWidth: 15.0,imageHeight: 15.0,addMargin: true),
                        SizedBox(height: 20.0,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: RichText(
                    text: TextSpan(
                        text: AppStringConstants.ALREADY_AN_EXISTING_USER,
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: black1),
                        children: [
                          TextSpan(
                            text: " ${AppStringConstants.LOG_IN}",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: orange),
                          )
                        ]),
                  ),
                ),
                SizedBox(height: 40.0,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

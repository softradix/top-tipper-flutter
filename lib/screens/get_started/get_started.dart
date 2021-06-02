import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/get_started/oval_shape_button_with_icon.dart';
import 'package:flutter_top_tipper/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_top_tipper/screens/sign_up/sign_up_screen.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';
import '../../app_string_constants.dart';

class GetStarted extends StatefulWidget {
  GetStarted(this.role);
  final String role;

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {

  String role;

  @override
  void initState() {
    super.initState();
    role = widget.role;
  }
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
                        text: role == AppStringConstants.ROLE_TIPPER?AppStringConstants.START_TIPING_TO_SECURE_ACCOUNT
                            :AppStringConstants.CREATE_ACCOUNT_TO_SECURE_ACCOUNT,
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
                        text: role == AppStringConstants.ROLE_TIPPER?AppStringConstants.START_TIPING_TO_EARN_POINTS:AppStringConstants.CREATE_ACCOUNT_TO_EARN_POINTS,
                        textSize: 12.0,
                        textColor: Colors.white,
                        textFontWeight: FontWeight.w500,
                        textAlign: TextAlign.center),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 40.0),
                            child: TextWidget(
                                text: role == AppStringConstants.ROLE_TIPPER?AppStringConstants.GET_STARTED_DESCRIPTION_TIPPER:AppStringConstants.GET_STARTED_DESCRIPTION,
                                textSize: 14.0,
                                textColor: black1,
                                textFontWeight: FontWeight.w500,
                                textAlign: TextAlign.center),
                          ),
                          SizedBox(height: 40.0,),
                          MyImageButton(imagePath: "apple_icon.png",
                              name: AppStringConstants.SIGN_UP_WITH_APPLE.toUpperCase(),
                          bgColor: Colors.black,imageWidth: 24.0,imageHeight: 24.0,addMargin: true),
                          SizedBox(height: 20.0,),
                          MyElevatedButton(
                              buttonText: AppStringConstants.REGISTER_WITH_EMAIL,
                              textColor: Colors.white,
                              buttonBgColor: orange,
                              onPress: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen(role)));
                              }),
                          SizedBox(height: 20.0,),
                          Visibility(
                            visible: role != AppStringConstants.ROLE_TIPPER,
                            child: MyImageButton(imagePath: "icon_stripe.png",
                              name: AppStringConstants.CONNECT_WITH_STRIPE,
                              bgColor: stripeBlue,imageWidth: 15.0,imageHeight: 15.0,addMargin: true),
                          ),
                          SizedBox(height: 20.0,),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20.0,
              left: 0.0,
              right: 0.0,
              child: Center(
                child: RichText(
                  text: TextSpan(
                      text: AppStringConstants.ALREADY_AN_EXISTING_USER,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: black1),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap=(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen(role)));
                          },
                          text: " ${AppStringConstants.LOG_IN}",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: orange),
                        )
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

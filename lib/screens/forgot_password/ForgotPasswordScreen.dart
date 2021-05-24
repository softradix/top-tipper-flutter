import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/forgot_password/CreateNewPasswordScreen.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: orange,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                      right: 0.0,
                      child: ImageWidget(
                          imagePath: "side_brush_mask.png",
                          width: 145.0,
                          height: 140.0,
                          isFill: false)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50.0),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back, color: orange),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 30.0, left: 20.0, right: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextWidget(
                                    text: AppStringConstants.FORGOT_PASSWORD,
                                    textSize: 24.0,
                                    textColor: black1,
                                    textFontWeight: FontWeight.w700),
                                SizedBox(height: 5.0,),
                                TextWidget(
                                    text: AppStringConstants
                                        .FORGOT_PASSWORD_DESCRIPTION,
                                    textSize: 12.0,
                                    textColor: darkGrey,
                                    textFontWeight: FontWeight.w500),
                                SizedBox(
                                  height: 50.0,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText:
                                        AppStringConstants.Enter_Email_Address,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            child: MyElevatedButton(
                                buttonText: AppStringConstants.SEND_LINK,
                                textColor: Colors.white,
                                buttonBgColor: orange,
                                onPress: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CreateNewPasswordScreen()));
                                }),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                  text: AppStringConstants.do_not_receive_link,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      color: black1),
                                  children: [
                                    TextSpan(
                                      text:
                                          " ${AppStringConstants.RESEND_LINK}",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          color: orange),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

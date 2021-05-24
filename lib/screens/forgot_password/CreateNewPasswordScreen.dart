import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  @override
  _CreateNewPasswordScreenState createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
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
                                    text: AppStringConstants.Create_New_Password,
                                    textSize: 24.0,
                                    textColor: black1,
                                    textFontWeight: FontWeight.w700),
                                SizedBox(height: 5.0,),
                                TextWidget(
                                    text: AppStringConstants
                                        .Please_reset_your_password,
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
                                        AppStringConstants.NEW_PASSWORD,
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText:
                                        AppStringConstants.CONFIRM_NEW_PASSWORD,
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
                                buttonText: AppStringConstants.RESET,
                                textColor: Colors.white,
                                buttonBgColor: orange,
                                onPress: () {}),
                          ),
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

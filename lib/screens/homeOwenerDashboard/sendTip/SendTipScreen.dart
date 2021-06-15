import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/button_stroke.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

import '../../../app_string_constants.dart';

class SendTipScreen extends StatelessWidget {

  bool _isShowTextFields=false;
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
            text: AppStringConstants.SEND_A_TIP,
            textSize: 18.0,
            textColor: Colors.white,
            textFontWeight: FontWeight.w700),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15.0,
              ),
              ImageWidget(
                  imagePath: "ic_orange_wave.png",
                  width: 200.0,
                  height: 200.0,
                  isFill: false),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    TextWidget(
                        text: "Markel Hall",
                        textSize: 20.0,
                        textColor: black1,
                        textFontWeight: FontWeight.w700),
                    SizedBox(
                      height: 4.0,
                    ),
                    TextWidget(
                        text: "FedEx Driver",
                        textSize: 10.0,
                        textColor: black1,
                        textFontWeight: FontWeight.w500),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.white,
                          elevation: 3.0,
                          child: Container(
                            height: 76.0,
                            width: 86.0,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ImageWidget(
                                    imagePath: "icon_share_outline.png",
                                    width: 28.0,
                                    height: 28.0,
                                    isFill: false),
                                TextWidget(
                                  text: AppStringConstants.SHARE_WITH_FRIENDS,
                                  textSize: 10.0,
                                  textColor: darkGrey,
                                  textFontWeight: FontWeight.w500,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Material(
                          color: Colors.white,
                          elevation: 3.0,
                          child: Container(
                            height: 76.0,
                            width: 86.0,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ImageWidget(
                                  imagePath: "ic_report.png",
                                  width: 28.0,
                                  height: 28.0,
                                  isFill: false,
                                  color: Colors.black,
                                ),
                                TextWidget(
                                  text: AppStringConstants.Report,
                                  textSize: 10.0,
                                  textColor: darkGrey,
                                  textFontWeight: FontWeight.w500,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Material(
                          elevation: 3.0,
                          color: Colors.transparent,
                          child: Container(
                            height: 76.0,
                            width: 86.0,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.red),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ImageWidget(
                                  imagePath: "ic_cancel_chat.png",
                                  width: 28.0,
                                  height: 28.0,
                                  isFill: false,
                                  color: Colors.white,
                                ),
                                TextWidget(
                                  text: AppStringConstants.TAP_TO_DISABLE,
                                  textSize: 10.0,
                                  textColor: Colors.white,
                                  textFontWeight: FontWeight.w500,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Visibility(
                      visible: _isShowTextFields,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Amount",
                        ),
                      ),
                    ),
                    Visibility(
                      visible: _isShowTextFields,
                      child: SizedBox(
                        height: 20.0,
                      ),
                    ),
                    Visibility(
                      visible: _isShowTextFields,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Leave a note",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              MyElevatedButton(
                  buttonText: AppStringConstants.ACCEPT,
                  textColor: Colors.white,
                  buttonBgColor: orange,
                  onPress: () {}),
              SizedBox(
                height: 20.0,
              ),
              MyStrokedButton(
                  onCliCk: () {
                    Navigator.pop(context);
                  },
                  text: AppStringConstants.REJECT.toUpperCase(),
                  textColor: orange,
                  strokeColor: orange),
              Visibility(
                visible: _isShowTextFields,
                child: MyElevatedButton(
                    buttonText: AppStringConstants.SEND_TIP,
                    textColor: Colors.white,
                    buttonBgColor: orange,
                    onPress: () {}),
              ),
              Visibility(
                visible: _isShowTextFields,
                child: SizedBox(
                  height: 20.0,
                ),
              ),
              Visibility(
                visible: _isShowTextFields,
                child: MyStrokedButton(
                    onCliCk: () {
                      Navigator.pop(context);
                    },
                    text: AppStringConstants.MESSAGE.toUpperCase(),
                    textColor: orange,
                    strokeColor: orange),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

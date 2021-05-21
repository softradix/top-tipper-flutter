import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/get_started/get_started.dart';
import 'package:flutter_top_tipper/screens/nationwide_leaderboard/leaderboard_item.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

import '../../app_string_constants.dart';

class NationWideLeaderBoard extends StatefulWidget {
  const NationWideLeaderBoard({Key key}) : super(key: key);

  @override
  _NationWideLeaderBoardState createState() => _NationWideLeaderBoardState();
}

class _NationWideLeaderBoardState extends State<NationWideLeaderBoard> {
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
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
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
                  Column(
                    children: [

                      TextWidget(
                          text: AppStringConstants.NATIONWIDE_LEADERBOARD,
                          textSize: 20.0,
                          textColor: black1,
                          textFontWeight: FontWeight.w700,
                          textAlign: TextAlign.center),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                                text: AppStringConstants.RANK,
                                textSize: 14.0,
                                textColor: darkGrey,
                                textFontWeight: FontWeight.w500),
                            TextWidget(
                                text: AppStringConstants.USERNAME,
                                textSize: 14.0,
                                textColor: darkGrey,
                                textFontWeight: FontWeight.w500),
                            TextWidget(
                                text: AppStringConstants.POINTS,
                                textSize: 14.0,
                                textColor: darkGrey,
                                textFontWeight: FontWeight.w500),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      LeaderBoardItem(
                          imagePath: "trophy_orange.png",
                          name: "Markel Hell",
                          points: "532",circleImageBackColor: lightPink),
                      LeaderBoardItem(
                          imagePath: "trophy_green.png",
                          name: "Demitry",
                          points: "410",circleImageBackColor: lightGreen),
                      LeaderBoardItem(
                          imagePath: "trophy_cyan.png",
                          name: "John Doe",
                          points: "400",circleImageBackColor: lightCyan),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  MyElevatedButton(
                      buttonText: AppStringConstants.GET_STARTED,
                      textColor: Colors.white,
                      buttonBgColor: orange,
                      onPress: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>GetStarted()));
                      }),
                  SizedBox(height: 6.0),
                  TextWidget(
                      text: AppStringConstants.EARN_TIPS_SIGN_UP_TPDAY,
                      textSize: 12.0,
                      textColor: darkGrey,
                      textFontWeight: FontWeight.w500,
                      textAlign: TextAlign.center),
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
            ),
          ],
        ),
      ),
    );
  }
}

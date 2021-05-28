import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';

class ShowPaymentAllSet extends StatelessWidget {
  const ShowPaymentAllSet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.stretch,
        children: [
          ImageWidget(
              imagePath:
              "app_black_logo.png",
              width: 180.0,
              height: 110.0,
              isFill: false),
          SizedBox(
            height: 14.0,
          ),
          Center(
            child: RichText(
              text: TextSpan(
                  text:
                  "You are all set,",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight:
                      FontWeight.w700,
                      color: black1),
                  children: [
                    TextSpan(
                      text: " MARKEL!",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight:
                          FontWeight
                              .w500,
                          color: orange),
                    )
                  ]),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 40.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                AppStringConstants
                    .Start_receiving_tips
                    .toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight:
                    FontWeight.w700),
              ),
              style: ElevatedButton
                  .styleFrom(
                  primary: orange,
                  shape:
                  RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius
                        .circular(
                        100.0),
                  )),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ImageWidget(
              imagePath:
              "ic_login.png",
              width: 40.0,
              height: 40.0,
              isFill: false),
        ],
      ),
    );
  }
}

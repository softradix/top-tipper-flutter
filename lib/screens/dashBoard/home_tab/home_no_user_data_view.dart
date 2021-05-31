import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/pop_ups/home_payment_setup.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class HomeNoUserData extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                TextWidget(
                    text: AppStringConstants.HOME_TIP,
                    textSize: 12.0,
                    textColor: black1,
                    textFontWeight: FontWeight.w500,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 10.0,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        useSafeArea: true,
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(20.0))),
                            child: PaymentSetupPopUp(),
                          );
                        });
                  },
                  child: TextWidget(
                      text: AppStringConstants
                          .SET_UP_STRIPE_PAYMENTS,
                      textSize: 12.0,
                      textColor: orange,
                      textFontWeight: FontWeight.w500,
                      textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 40.0, top: 10.0),
            child: ImageWidget(
                imagePath: "ic_home_book.png",
                width: 160.0,
                height: 160.0,
                isFill: false),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 9.0),
            child: TextWidget(
                text: AppStringConstants.NO_ACTIVITY_YET,
                textSize: 18.0,
                textColor: black1,
                textFontWeight: FontWeight.w700,
                textAlign: TextAlign.center),
          ),
          TextWidget(
              text: AppStringConstants.HINT_START_TIP,
              textSize: 12.0,
              textColor: darkGrey,
              textFontWeight: FontWeight.w400,
              textAlign: TextAlign.center),
          SizedBox(height: 10.0),
          TextWidget(
              text: AppStringConstants.SCAN_QR,
              textSize: 12.0,
              textColor: orange,
              textFontWeight: FontWeight.w500,
              textAlign: TextAlign.center),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}

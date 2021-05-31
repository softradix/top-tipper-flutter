import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/payment_method/PaymentMethodScreen.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class PaymentSetupPopUp extends StatelessWidget {
  const PaymentSetupPopUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.stretch,
        children: [
          TextWidget(
              text:
              "Payment Setup Instructions",
              textSize: 16.0,
              textColor: black1,
              textFontWeight:
              FontWeight.w700),
          SizedBox(
            height: 13.0,
          ),
          TextWidget(
              text:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              textSize: 12.0,
              textColor: darkGrey,
              textFontWeight:
              FontWeight.w400),
          SizedBox(
            height: 9.0,
          ),
          TextWidget(
              text:
              "1. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              textSize: 12.0,
              textColor: darkGrey,
              textFontWeight:
              FontWeight.w400),
          SizedBox(
            height: 9.0,
          ),
          TextWidget(
              text:
              "2. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              textSize: 12.0,
              textColor: darkGrey,
              textFontWeight:
              FontWeight.w400),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 40.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethodScreen()));
              },
              child: Text(
                AppStringConstants
                    .CONTINUE
                    .toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight:
                    FontWeight
                        .w700),
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
            height: 15.0,
          ),
          InkWell(
            onTap: (){
              Navigator. pop(context, false);
            },
            child: TextWidget(
              text: "Skip",
              textSize: 12.0,
              textColor: darkGrey,
              textFontWeight:
              FontWeight.w500,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

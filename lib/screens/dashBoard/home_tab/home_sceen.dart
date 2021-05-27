import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/payment_method/PaymentMethodScreen.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: ImageWidget(
                            imagePath: "top_tipper_logo.png",
                            width: 100.0,
                            height: 60.0,
                            isFill: true),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethodScreen()));
                        },
                        child: TextWidget(
                            text:
                                "${String.fromCharCodes(new Runes('\u0024'))}00.00",
                            textSize: 40.0,
                            textColor: Colors.white,
                            textFontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      TextWidget(
                          text: AppStringConstants.TOTAL_RECEIVED,
                          textSize: 14.0,
                          textColor: Colors.white,
                          textFontWeight: FontWeight.w700,
                          textAlign: TextAlign.center),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 60.0),
                    child: Column(
                      children: [
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
                                    child: Container(
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
                                              textFontWeight: FontWeight.w700),
                                          SizedBox(
                                            height: 13.0,
                                          ),
                                          TextWidget(
                                              text:
                                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                              textSize: 12.0,
                                              textColor: darkGrey,
                                              textFontWeight: FontWeight.w400),
                                          SizedBox(
                                            height: 9.0,
                                          ),
                                          TextWidget(
                                              text:
                                                  "1. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                              textSize: 12.0,
                                              textColor: darkGrey,
                                              textFontWeight: FontWeight.w400),
                                          SizedBox(
                                            height: 9.0,
                                          ),
                                          TextWidget(
                                              text:
                                                  "2. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                              textSize: 12.0,
                                              textColor: darkGrey,
                                              textFontWeight: FontWeight.w400),
                                          SizedBox(
                                            height: 25.0,
                                          ),
                                          Container(
                                            height: 40.0,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text(
                                                AppStringConstants.CONTINUE
                                                    .toUpperCase(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  primary: orange,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.0),
                                                  )),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          TextWidget(
                                              text: "Skip",
                                              textSize: 12.0,
                                              textColor: darkGrey,
                                              textFontWeight: FontWeight.w500,textAlign: TextAlign.center,),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: TextWidget(
                              text: AppStringConstants.SET_UP_STRIPE_PAYMENTS,
                              textSize: 12.0,
                              textColor: orange,
                              textFontWeight: FontWeight.w500,
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 68.0, top: 10.0),
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
            ),
          ],
        ),
      ),
    );
  }
}

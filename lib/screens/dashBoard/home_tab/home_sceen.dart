import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/dashBoard/home_tab/home_no_user_data_view.dart';
import 'package:flutter_top_tipper/screens/dashBoard/home_tab/layout_pager.dart';
import 'package:flutter_top_tipper/screens/payment_method/PaymentMethodScreen.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showPager = true;

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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentMethodScreen()));
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
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: _showPager
                      ? PagerViewLayout()
                      : Center(child: HomeNoUserData()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

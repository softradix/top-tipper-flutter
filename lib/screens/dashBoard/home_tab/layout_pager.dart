import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/dashBoard/home_tab/my_clients_section/my_clients.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class PagerViewLayout extends StatefulWidget {
  const PagerViewLayout({Key key}) : super(key: key);

  @override
  _PagerViewLayoutState createState() => _PagerViewLayoutState();
}

class _PagerViewLayoutState extends State<PagerViewLayout> {
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 220.0,
          child: PageView.builder(
            onPageChanged: (index) {},
            itemCount: 5,
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Visibility(
                    visible: true,
                    child: Column(
                      children: [
                        TextWidget(
                            text: "Congratulations",
                            textSize: 18.0,
                            textColor: black1,
                            textFontWeight: FontWeight.w700),
                        SizedBox(height: 4.0,),
                        TextWidget(
                          text: "You received a tip from John Russell. Keep up the great work!",
                          textSize: 12.0,
                          textColor: black1,
                          textFontWeight: FontWeight.w400,
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 11.0),
                          decoration: BoxDecoration(
                              color: lightOrange,
                              borderRadius: BorderRadius.circular(100.0)),
                          padding: EdgeInsets.symmetric(
                              vertical: 2.0, horizontal: 7.0),
                          child: TextWidget(
                              text:
                                  "${String.fromCharCodes(new Runes('\u0024'))}10.00",
                              textSize: 18.0,
                              textColor: orange,
                              textFontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 34.0,
                            height: 34.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: ImageWidget(
                                  imagePath: "demo_user.png",
                                  width: 34.0,
                                  height: 34.0,
                                  isFill: false),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TextWidget(
                              text: "John",
                              textSize: 14.0,
                              textColor: black1,
                              textFontWeight: FontWeight.w500,
                              textMaxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  TextWidget(
                    text:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    textSize: 14.0,
                    textColor: darkGrey,
                    textFontWeight: FontWeight.w400,
                  ),
                  Visibility(
                      visible:false,child: Container(
                    height: 50.0,
                    margin: EdgeInsets.only(top: 20.0),
                    child: OutlinedButton(
                      child: Text(
                        "Approval Pending".toUpperCase(),
                        style: TextStyle(color: orange, fontSize: 12.0),
                      ),
                      onPressed: (){},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 2.0, color: orange),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                  ))

                ],
              ),
            ),
          ),
        ),

        Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyElevatedButton(
                    buttonText: "My Clients",
                    textColor: Colors.white,
                    buttonBgColor: orange,
                    onPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyClientsListScreen()));
                    }),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  child: TextWidget(
                    text: AppStringConstants.SCAN_QR,
                    textSize: 12.0,
                    textColor: orange,
                    textFontWeight: FontWeight.w500,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

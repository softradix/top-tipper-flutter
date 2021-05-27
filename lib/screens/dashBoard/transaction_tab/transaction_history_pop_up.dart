import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class TransactionHistoryPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black12,
        child: Center(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0, top: 100.0),
                decoration:
                    BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  children: [
                    TextWidget(
                        text: "John Russell",
                        textSize: 18.0,
                        textColor: black1,
                        textFontWeight: FontWeight.w700),
                    TextWidget(
                        text:
                            "${String.fromCharCodes(new Runes('\u0024'))}120.00",
                        textSize: 14.0,
                        textColor: orange,
                        textFontWeight: FontWeight.w700),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        TextWidget(
                            text: "Address:",
                            textSize: 10.0,
                            textColor: darkGrey,
                            textFontWeight: FontWeight.w400),
                        SizedBox(
                          width: 50.0,
                        ),
                        Expanded(
                          child: TextWidget(
                              text: "15282 Skunk River Rd,Los Angeles, California, 84302",
                              textSize: 12.0,
                              textColor: black1,
                              textFontWeight: FontWeight.w500,
                          textAlign: TextAlign.start,),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        TextWidget(
                            text: "Date:",
                            textSize: 10.0,
                            textColor: darkGrey,
                            textFontWeight: FontWeight.w400),
                        SizedBox(
                          width: 50.0,
                        ),
                        Expanded(
                          child: TextWidget(
                              text: "04 Feb, 2021",
                              textSize: 12.0,
                              textColor: black1,
                              textFontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Expanded(
                      child: TextWidget(
                          text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          textSize: 10.0,
                          textColor: darkGrey,
                          textFontWeight: FontWeight.w500),
                    ),

                    Container(
                      height: 50.0,
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: OutlinedButton(
                        child: Text(
                          "ok".toUpperCase(),
                          style: TextStyle(color: Colors.white,fontSize: 16.0),
                        ),
                        onPressed: () {
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 2.0, color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 0.0,
                right: 0.0,
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100.0)),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: ImageWidget(
                      imagePath: "ic_user_circle.png",
                      width: 80.0,
                      height: 80.0,
                      isFill: false,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

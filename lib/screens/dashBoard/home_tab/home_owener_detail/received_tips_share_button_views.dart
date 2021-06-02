import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/dashBoard/home_tab/home_owener_detail/receive_tip_list_item.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class ShareChatButtonViews extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
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
                          textFontWeight: FontWeight.w500,textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20.0,),
              Material(
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
                          imagePath: "ic_chat.png",
                          width: 28.0,
                          height: 28.0,
                          isFill: false,color: Colors.black,),
                      TextWidget(
                          text: AppStringConstants.ENABLE_CHAT,
                          textSize: 10.0,
                          textColor: darkGrey,
                          textFontWeight: FontWeight.w500,textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
            child: TextWidget(
              text: "received tips".toUpperCase(),
              textSize: 10.0,
              textColor: darkGrey,
              textFontWeight: FontWeight.w500,),
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index){
            return ReceiveTipListItem(onTap: (){

            },name: "John",);
          })
        ],
      ),
    );
  }
}

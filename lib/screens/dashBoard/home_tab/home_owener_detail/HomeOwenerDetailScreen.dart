import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/dashBoard/home_tab/home_owener_detail/buttons_views.dart';
import 'package:flutter_top_tipper/screens/dashBoard/home_tab/home_owener_detail/receive_tip_list_item.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class HomeOwenerDetailScreen extends StatelessWidget {

  bool _shouldShowButtonsView=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: TextWidget(
            text: AppStringConstants.HOME_OWENER_DETAIL,
            textSize: 18.0,
            textColor: Colors.white,
            textFontWeight: FontWeight.w700),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_backspace_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: orange,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      width: 120.0,
                      height: 120.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: ImageWidget(
                            imagePath: "image_wave.png",
                            width: 120.0,
                            height: 120.0,
                            isFill: true),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      top: 0.0,
                      left: 0.0,
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0)),
                        child: Padding(
                          padding: EdgeInsets.all(1.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: ImageWidget(
                                imagePath: "demo_user.png",
                                width: 110.0,
                                height: 110.0,
                                isFill: false),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TextWidget(
                    text: "John Rusell",
                    textSize: 18.0,
                    textColor: Colors.white,
                    textFontWeight: FontWeight.w700),
                Container(
                  margin: EdgeInsets.only(top: 7.0,bottom: 20.0),
                  child: TextWidget(
                      text: "15282 Skunk River Rd, Los Angeles,California, 84302",
                      textSize: 10.0,
                      textColor: Colors.white,
                      textFontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Visibility(visible:_shouldShowButtonsView,child: ButtonsViewsOnDetails()),
          SizedBox(height: 15.0,),
          Visibility(
            visible:_shouldShowButtonsView?false:true,
            child: Row(
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
          ),
          Visibility(
            visible:_shouldShowButtonsView?false:true,
            child: Container(
              margin: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
              child: TextWidget(
                text: "received tips".toUpperCase(),
                textSize: 10.0,
                textColor: darkGrey,
                textFontWeight: FontWeight.w500,),
            ),
          ),
          Visibility(
            visible:_shouldShowButtonsView?false:true,
            child: Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index){
                    return ReceiveTipListItem(onTap: (){

                    },name: "John",);
                  }),
            ),
          )
        ],
      ),
    );
  }
}

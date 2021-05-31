import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/dashBoard/home_tab/home_owener_detail/buttons_views.dart';
import 'package:flutter_top_tipper/screens/dashBoard/home_tab/home_owener_detail/received_tips_share_button_views.dart';
import 'package:flutter_top_tipper/widgets/button_stroke.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class HomeOwenerDetailScreen extends StatelessWidget {
  const HomeOwenerDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: TextWidget(
            text: "Home Owner Detail",
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
          // ButtonsViewsOnDetails(),
          ShareChatButtonViews()
        ],
      ),
    );
  }
}

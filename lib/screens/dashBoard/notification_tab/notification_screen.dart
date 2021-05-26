import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/dashBoard/notification_tab/notification_list_item.dart';
import 'package:flutter_top_tipper/screens/no_data_screen.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class NotificationTabScreen extends StatefulWidget {
  const NotificationTabScreen({Key key}) : super(key: key);

  @override
  _NotificationTabScreenState createState() => _NotificationTabScreenState();
}

class _NotificationTabScreenState extends State<NotificationTabScreen> {
  List<String> mItemList = ["1", "2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orange,
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: TextWidget(
            text: AppStringConstants.NOTIFICATIONS,
            textSize: 18.0,
            textColor: Colors.white,
            textFontWeight: FontWeight.w700,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child: Container(
          margin: EdgeInsets.only(top: 30.0),
          child: mItemList.isEmpty
              ? NoDataScreen(
                  imagePath: "ic_no_chat.png", text: "No message yer!")
              : ListView.builder(
                  itemCount: mItemList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return NotificationListItem(
                      title: "Congratulations!",
                      city:
                          "You are in the top 10 ranking of TopTipper Service Providers in your area!",
                      date: "1 min ago",
                    );
                  }),
        ),
      ),
    );
  }
}

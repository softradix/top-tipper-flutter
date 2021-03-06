import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/dashBoard/chat_tab/chat_list_item.dart';
import 'package:flutter_top_tipper/screens/dashBoard/chat_tab/one_to_one_chat_screen.dart';
import 'package:flutter_top_tipper/screens/no_data_screen.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class RecentChatList extends StatefulWidget {
  const RecentChatList({Key key}) : super(key: key);

  @override
  _RecentChatListState createState() => _RecentChatListState();
}

class _RecentChatListState extends State<RecentChatList> {
  List<String> mItemList = ["1", "2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orange,
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: TextWidget(
            text: AppStringConstants.CHATS,
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
          margin: EdgeInsets.only(top: 20.0),
          child: mItemList.isEmpty
              ? NoDataScreen(
                  imagePath: "ic_no_chat.png", text: AppStringConstants.NO_MESSAGE_YET)
              : ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return ChatListItem(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OneToOneChatScreen()));
                      },
                        imagePath: "ic_user_circle.png",
                        name: "John Russell",
                        lastMessage: "Hello Emily");
                  }),
        ),
      ),
    );
  }
}

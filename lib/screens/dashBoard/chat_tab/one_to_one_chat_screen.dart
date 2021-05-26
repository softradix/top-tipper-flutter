import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/dashBoard/chat_tab/chat_list_model.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class OneToOneChatScreen extends StatefulWidget {
  const OneToOneChatScreen({Key key}) : super(key: key);

  @override
  _OneToOneChatScreenState createState() => _OneToOneChatScreenState();
}

class _OneToOneChatScreenState extends State<OneToOneChatScreen> {

  var controller = TextEditingController();
  String messageText;

  List<ChatListModel> chatList = [
    ChatListModel(message:"hi", id:"1"),
    ChatListModel(message:"Hello", id:"2"),
    ChatListModel(message:"Fine", id:"1"),
    ChatListModel(message:"How Are you", id:"1"),
    ChatListModel(message:"You tell, what about you", id:"1"),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
            text: "John Russell",
            textSize: 18.0,
            textColor: Colors.white,
            textFontWeight: FontWeight.w700),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_backspace_rounded,color: Colors.white,),
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 50.0,
            width: double.infinity,
            margin: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 10.0),
            child: TextField(
              controller: controller,
              onChanged: (value){
                messageText = value;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Type something here...",
                hintStyle: TextStyle(
                  color: darkGrey
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(100.0),
                ),
              ),
            ),
          ),
    ),
          Positioned(
            right: 20.0,
            child: IconButton(
              onPressed: (){
                setState(() {
                  controller.clear();
                  chatList.add(ChatListModel(message: messageText,id: "1"));
                  messageText="";
                });
              },
              icon: Icon(Icons.send,color: orange,),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: chatList.length,
            itemBuilder: (BuildContext context ,int index){
          return MessageBubble(text: chatList[index].message,isMe:  chatList[index].id=="1"?true:false,);
        }),
      ),
    );
  }
}


class MessageBubble extends StatelessWidget {
  MessageBubble({this.text, this.isMe});

  final String text;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2.0,
          ),
          Material(
            elevation: 10.0,
            borderRadius: isMe ? BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0)) :
            BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0)),
            color: isMe ? orange : Color(0xffEAEAEA),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.0, vertical: 15.0),
              child: Text(
                '$text',
                style: TextStyle(fontSize: 15.0, color: isMe ? Colors.white : black1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

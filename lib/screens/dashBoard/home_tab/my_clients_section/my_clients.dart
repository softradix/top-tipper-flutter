import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/dashBoard/home_tab/home_owener_detail/HomeOwenerDetailScreen.dart';
import 'package:flutter_top_tipper/screens/dashBoard/home_tab/my_clients_section/clients_list_item.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class MyClientsListScreen extends StatelessWidget {
  const MyClientsListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextWidget(
          text: AppStringConstants.HOME_OWENER,
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
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20.0,right: 20.0),
              margin: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: darkGrey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100))
                ),
                child: Row(
                  children: [
                    Icon(Icons.search,color: orange,),
                    SizedBox(width: 7.0,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: AppStringConstants.SEARCH_HOME_OWENER
                        ),
                      ),
                    )
                  ],
                )
            ),
            SizedBox(height: 12.0,),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return ClientsListItem(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeOwenerDetailScreen()));
                        },
                        imagePath: "demo_user.png",
                        name: "John Russell",
                        lastMessage: "Hello Emily");
                  }),
            )
          ],
        ),
      ),
    );
  }
}

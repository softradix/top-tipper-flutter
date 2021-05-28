import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orange,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.keyboard_backspace_rounded), onPressed: (){
          Navigator.pop(context);
        }),
        title: TextWidget(
            text: AppStringConstants.Change_Password,
            textSize: 18.0,
            textColor: Colors.white,
            textFontWeight: FontWeight.w700),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: 30.0, left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText:
                      AppStringConstants.OLD_PASSWORD,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText:
                      AppStringConstants.NEW_PASSWORD,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText:
                      AppStringConstants.CONFIRM_NEW_PASSWORD,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: MyElevatedButton(
                  buttonText: AppStringConstants.SAVE,
                  textColor: Colors.white,
                  buttonBgColor: orange,
                  onPress: () {}),
            ),
          ],
        ),
      ),
    );
  }
}

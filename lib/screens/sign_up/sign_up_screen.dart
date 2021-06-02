import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/dashBoard/dashboard.dart';
import 'package:flutter_top_tipper/screens/sign_up/upload_selfie.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen(this.role);
  final String role;
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordHidden = true;
  bool _isConfirmPasswordHidden = true;


  String role;

  @override
  void initState() {
    super.initState();
    role = widget.role;
  }
  void _togglePasswordView() {
    setState(() {
      _isPasswordHidden = !_isPasswordHidden;
    });
  }

  void _toggleConfirmPasswordView() {
    setState(() {
      _isConfirmPasswordHidden = !_isConfirmPasswordHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: orange,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0)),
              ),
              child: Container(
                margin: EdgeInsets.only(bottom: 40.0),
                child: Stack(
                  children: [
                    Positioned(
                        right: 0.0,
                        child: ImageWidget(
                            imagePath: "side_brush_mask.png",
                            width: 145.0,
                            height: 140.0,
                            isFill: false)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50.0),
                          child: IconButton(
                            icon: Icon(Icons.arrow_back, color: orange),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 30.0, left: 20.0, right: 20.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      TextWidget(
                                          text: AppStringConstants
                                              .SIGN_UP,
                                          textSize: 24.0,
                                          textColor: black1,
                                          textFontWeight: FontWeight.w700),
                                      SizedBox(height: 5.0,),
                                      TextWidget(
                                          text: AppStringConstants
                                              .SIGN_UP_DESCRIPTION,
                                          textSize: 12.0,
                                          textColor: darkGrey,
                                          textFontWeight: FontWeight.w500),
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadSelfieScreen()));
                                        },
                                        child: Center(
                                          child: Stack(
                                            children: [
                                              Container(
                                                width: 100.0,
                                                height:100.0,
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.transparent,
                                                  child: ImageWidget(imagePath: "ic_user_circle.png", width: 100.0, height: 100.0, isFill: true),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 5.0,
                                                right: 10.0,
                                                child: Container(
                                                  width: 30.0,
                                                  height:30.0,
                                                  child: CircleAvatar(
                                                    backgroundColor: orange,
                                                    child: ImageWidget(imagePath: "ic_camera.png", width: 15.0, height: 15.0, isFill: true),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          border: UnderlineInputBorder(),
                                          labelText:
                                              AppStringConstants.User_ID_Email,
                                        ),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          border: UnderlineInputBorder(),
                                          labelText: AppStringConstants.FULL_NAME,
                                        ),
                                      ),
                                      Visibility(
                                        visible: role != AppStringConstants.ROLE_TIPPER,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: UnderlineInputBorder(),
                                            labelText: AppStringConstants.COMPANY,
                                          ),
                                        ),
                                      ),
                                      TextField(
                                        obscureText: _isPasswordHidden,
                                        decoration: InputDecoration(
                                          border: UnderlineInputBorder(),
                                          labelText:
                                              AppStringConstants.CREATE_PASSWORD,
                                          suffix: InkWell(
                                            onTap: _togglePasswordView,
                                            child: Icon(_isPasswordHidden
                                                ? Icons.visibility
                                                : Icons.visibility_off),
                                          ),
                                        ),
                                      ),
                                      TextField(
                                        obscureText: _isConfirmPasswordHidden,
                                        decoration: InputDecoration(
                                          border: UnderlineInputBorder(),
                                          labelText:
                                              AppStringConstants.CONFIRM_PASSWORD,
                                          suffix: InkWell(
                                            onTap: _toggleConfirmPasswordView,
                                            child: Icon(_isConfirmPasswordHidden
                                                ? Icons.visibility
                                                : Icons.visibility_off),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20.0),
                                  child: MyElevatedButton(
                                      buttonText: AppStringConstants.SIGN_UP,
                                      textColor: Colors.white,
                                      buttonBgColor: orange,
                                      onPress: () {
                                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>DashBoardScreen()),(Route<dynamic> route) => false);
                                      }),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 5.0),
            child: TextWidget(
                text: AppStringConstants.ALREADY_AN_ACCOUNT,
                textSize: 14.0,
                textColor: Colors.white,
                textFontWeight: FontWeight.w700,
                textAlign: TextAlign.center),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0, bottom: 30.0),
            child: MyElevatedButton(
                buttonText: AppStringConstants.LOGIN,
                textColor: orange,
                buttonBgColor: Colors.white,
                onPress: () {
                  Navigator.pop(context);
                }),
          )
        ],
      ),
    );
  }
}

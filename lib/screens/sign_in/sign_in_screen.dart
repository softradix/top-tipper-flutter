import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/dashBoard/dashboard.dart';
import 'package:flutter_top_tipper/screens/forgot_password/ForgotPasswordScreen.dart';
import 'package:flutter_top_tipper/screens/get_started/oval_shape_button_with_icon.dart';
import 'package:flutter_top_tipper/screens/homeOwenerDashboard/home_owener_dashboard.dart';
import 'package:flutter_top_tipper/screens/sign_up/sign_up_screen.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen(this.role);
  final String role;
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isHidden = true;

  String role;

  @override
  void initState() {
    super.initState();
    role = widget.role;
  }
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
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
              child: SingleChildScrollView(
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
                        SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 30.0, left: 20.0, right: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    TextWidget(
                                        text:
                                            AppStringConstants.WELCOME_TO_TOP_TIPPER,
                                        textSize: 24.0,
                                        textColor: black1,
                                        textFontWeight: FontWeight.w700),
                                    SizedBox(height: 5.0,),
                                    TextWidget(
                                        text: AppStringConstants
                                            .EXISTING_USER_PLEASE_LOGIN,
                                        textSize: 12.0,
                                        textColor: darkGrey,
                                        textFontWeight: FontWeight.w500),
                                    TextField(
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: AppStringConstants.User_ID_Email,
                                      ),
                                    ),
                                    TextField(
                                      obscureText: _isHidden,
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: AppStringConstants.PASSWORD,
                                        suffix: InkWell(
                                          onTap: _togglePasswordView,
                                          child: Icon(_isHidden
                                              ? Icons.visibility
                                              : Icons.visibility_off),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10.0),
                                      child: InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
                                        },
                                        child: TextWidget(
                                            textAlign: TextAlign.end,
                                            text: "${AppStringConstants.FORGOT_PASSWORD}?",
                                            textSize: 12.0,
                                            textColor: darkGrey,
                                            textFontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 20.0),
                                    child: MyElevatedButton(
                                        buttonText: AppStringConstants.LOGIN,
                                        textColor: Colors.white,
                                        buttonBgColor: orange,
                                        onPress: () {
                                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> role == AppStringConstants.ROLE_TIPPER?HomeOwenerDashBoardScreen():DashBoardScreen()),(Route<dynamic> route) => false);
                                        }),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 10.0),
                                    child: TextWidget(
                                        textAlign: TextAlign.center,
                                        text: "OR",
                                        textSize: 10.0,
                                        textColor: darkGrey,
                                        textFontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(left: 20.0,right: role !=AppStringConstants.ROLE_TIPPER?5.0:20.0),
                                          child: MyImageButton(imagePath: "apple_icon.png",
                                            name: role !=AppStringConstants.ROLE_TIPPER?AppStringConstants.APPLE:AppStringConstants.SIGN_UP_WITH_APPLE,
                                            bgColor: Colors.black,imageWidth: 24.0,imageHeight: 24.0,addMargin: false,),
                                        ),
                                      ),
                                      Visibility(
                                        visible: role !=AppStringConstants.ROLE_TIPPER,
                                        child: Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(right: 20.0,left: 5.0),
                                            child: MyImageButton(imagePath: "icon_stripe.png",
                                                name: AppStringConstants.STRIPE,
                                                bgColor: stripeBlue,imageWidth: 15.0,imageHeight: 15.0,addMargin: false),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
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
                text: AppStringConstants.NEW_TO_TOP_TIPPER_SIGN_UP,
                textSize: 14.0,
                textColor: Colors.white,
                textFontWeight: FontWeight.w700,
                textAlign: TextAlign.center),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0, bottom: 30.0),
            child: MyElevatedButton(
                buttonText: AppStringConstants.SIGN_UP,
                textColor: orange,
                buttonBgColor: Colors.white,
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen(role)));}),
          )
        ],
      ),
    );
  }
}

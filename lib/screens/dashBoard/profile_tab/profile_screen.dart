import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/dashBoard/profile_tab/EmailVerificationScreen.dart';
import 'package:flutter_top_tipper/screens/my_contact_section/my_contacts_screen.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _allowPushNotification = false;
  bool _allowMyContact = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orange,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 40.0),
                child: Expanded(
                  child: Stack(
                    children: [
                      Container(
                        child: ImageWidget(
                            imagePath: "ic_dash_border.png",
                            width: 100.0,
                            height: 100.0,
                            isFill: false),
                      ),
                      Positioned(
                        bottom: 0.0,
                        top: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100.0)),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: ImageWidget(
                              imagePath: "ic_user_circle.png",
                              width: 80.0,
                              height: 80.0,
                              isFill: false,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 15.0,
                        child: Container(
                          width: 28.0,
                          height: 28.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100.0)),
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: ImageWidget(
                              imagePath: "ic_camera.png",
                              width: 16.0,
                              height: 13.0,
                              isFill: false,
                              color: orange,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                    text: "Markel Hell",
                    textSize: 22.0,
                    textColor: Colors.white,
                    textFontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.0),
                    width: 24.0,
                    height: 24.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100.0)),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: ImageWidget(
                        imagePath: "ic_edit.png",
                        width: 12.0,
                        height: 12.0,
                        isFill: false,
                        color: orange,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  color: Color(0xffEAEAEA),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal:20.0,vertical: 15.0),
                          child: TextWidget(
                            text: "Personal Information".toUpperCase(),
                            textSize: 10.0,
                            textColor: darkGrey,
                            textFontWeight: FontWeight.w500,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          color: Colors.white,
                          child: Column(children: [
                            SizedBox(height: 10.0,),
                            Row(
                              children: [
                                ImageWidget(imagePath: "ic_id_card.png", width: 24.0, height: 24.0, isFill: false),
                                SizedBox(width: 10.0,),
                                Expanded(
                                  child: TextWidget(
                                    text: "toptipper.co/mhall123",
                                    textSize: 12.0,
                                    textColor: black1,
                                    textFontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Row(
                              children: [
                                ImageWidget(imagePath: "ic_email.png", width: 24.0, height: 24.0, isFill: false),
                                SizedBox(width: 10.0,),
                                Expanded(
                                  child: TextWidget(
                                    text: "markelh123@gmail.com",
                                    textSize: 12.0,
                                    textColor: black1,
                                    textFontWeight: FontWeight.w500,
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailVerificationScreen()));
                                  },
                                  child: TextWidget(
                                    text: "Verify",
                                    textSize: 10.0,
                                    textColor: orange,
                                    textFontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Row(
                              children: [
                                ImageWidget(imagePath: "ic_call.png", width: 24.0, height: 24.0, isFill: false),
                                SizedBox(width: 10.0,),
                                Expanded(
                                  child: TextWidget(
                                    text: AppStringConstants.ADD_PHONE_NUMBER,
                                    textSize: 12.0,
                                    textColor: lightGrey,
                                    textFontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextWidget(
                                  text: "1 point",
                                  textSize: 10.0,
                                  textColor: black1,
                                  textFontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Row(
                              children: [
                                ImageWidget(imagePath: "ic_location.png", width: 24.0, height: 24.0, isFill: false),
                                SizedBox(width: 10.0,),
                                Expanded(
                                  child: TextWidget(
                                    text: AppStringConstants.ADD_COMPANY,
                                    textSize: 12.0,
                                    textColor: lightGrey,
                                    textFontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextWidget(
                                  text: "1 point",
                                  textSize: 10.0,
                                  textColor: black1,
                                  textFontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,)
                          ],),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal:20.0,vertical: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextWidget(
                                text: AppStringConstants.PAYMENT_METHOD.toUpperCase(),
                                textSize: 10.0,
                                textColor: darkGrey,
                                textFontWeight: FontWeight.w500,
                              ),
                              TextWidget(
                                text: "To get 10 points link payment method".toUpperCase(),
                                textSize: 8.0,
                                textColor: lightGrey2,
                                textFontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
                          color: Colors.white,
                          child: Row(
                            children: [
                              Expanded(
                                child: TextWidget(
                                  text: "Stripe",
                                  textSize: 12.0,
                                  textColor: black1,
                                  textFontWeight: FontWeight.w700,
                                ),
                              ),
                              Icon(Icons.check_circle,size: 16.0,color: orange,)
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal:20.0,vertical: 15.0),
                          child: TextWidget(
                            text: "Accounts".toUpperCase(),
                            textSize: 10.0,
                            textColor: darkGrey,
                            textFontWeight: FontWeight.w500,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
                          color: Colors.white,
                          child: Row(
                            children: [
                              Expanded(
                                child: TextWidget(
                                  text: "Switch Account",
                                  textSize: 12.0,
                                  textColor: black1,
                                  textFontWeight: FontWeight.w700,
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios_sharp,size: 13.0,color: darkGrey,)
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal:20.0,vertical: 15.0),
                          child: TextWidget(
                            text: "settings".toUpperCase(),
                            textSize: 10.0,
                            textColor: darkGrey,
                            textFontWeight: FontWeight.w500,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: TextWidget(
                                      text: "Push Notificatons",
                                      textSize: 12.0,
                                      textColor: black1,
                                      textFontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  CupertinoSwitch(value: _allowPushNotification, onChanged: (value){
                                    setState(() {
                                      _allowPushNotification = value;
                                    });
                                  },activeColor: orange,trackColor: darkGrey,),
                                ],
                              ),
                              SizedBox(height: 9.0,),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        TextWidget(
                                          text: "My Contacts",
                                          textSize: 12.0,
                                          textColor: black1,
                                          textFontWeight: FontWeight.w700,
                                        ),
                                        TextWidget(
                                          text: "To get 1 point on contacts",
                                          textSize: 8.0,
                                          textColor: black1,
                                          textFontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                  CupertinoSwitch(value: _allowMyContact, onChanged: (value){
                                    setState(() {
                                      _allowMyContact = value;
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyContactScreen()));
                                    });
                                  },activeColor: orange,trackColor: darkGrey,),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal:20.0,vertical: 15.0),
                          child: TextWidget(
                            text: "others".toUpperCase(),
                            textSize: 10.0,
                            textColor: darkGrey,
                            textFontWeight: FontWeight.w500,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: TextWidget(
                                      text: "Invite Friends",
                                      textSize: 12.0,
                                      textColor: black1,
                                      textFontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios_sharp,size: 13.0,color: darkGrey,)
                                ],
                              ),
                              SizedBox(height: 20.0,),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextWidget(
                                      text: "Change Password",
                                      textSize: 12.0,
                                      textColor: black1,
                                      textFontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios_sharp,size: 13.0,color: darkGrey,)
                                ],
                              ),
                              SizedBox(height: 20.0,),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextWidget(
                                      text: "Log Out",
                                      textSize: 12.0,
                                      textColor: black1,
                                      textFontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.0,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

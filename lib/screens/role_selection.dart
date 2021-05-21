import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';

import '../colors.dart';
import 'on_boarding/onboarding_screen.dart';

class RoleSelection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageWidget(imagePath: "splash_back.png", width: double.infinity, height: double.infinity,isFill: true,),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height:100.0),
                    ImageWidget(imagePath: "top_tipper_logo.png", width: 200.0, height: 150.0,isFill: false),
                    Text(
                      AppStringConstants.NICE_TO_SEE,
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(AppStringConstants.I_AM_A,
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center),

                    SizedBox(height:20.0),
                    MyElevatedButton(
                        buttonText: AppStringConstants.Tipper,
                        textColor: orange,
                        buttonBgColor: Colors.white,
                        onPress: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
                        }),
                    SizedBox(height:20.0),
                    Container(
                      height: 50.0,
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: OutlinedButton(
                        child: Text(
                          AppStringConstants.SERVICE_PROVIDER.toUpperCase(),
                          style: TextStyle(color: Colors.white,fontSize: 16.0),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 2.0, color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



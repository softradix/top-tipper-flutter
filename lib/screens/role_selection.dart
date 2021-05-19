import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';

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
                      "It’s nice to be nice",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("I am a:",
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center),

                    SizedBox(height:20.0),
                    Container(
                      height: 50.0,
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
                        },
                        child: Text(
                          "Tipper".toUpperCase(),
                          style: TextStyle(color: Colors.orange,fontSize: 16.0),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            )),
                      ),
                    ),
                    SizedBox(height:20.0),
                    Container(
                      height: 50.0,
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: OutlinedButton(
                        child: Text(
                          "service provider".toUpperCase(),
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



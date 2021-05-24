import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';

class UploadSelfieScreen extends StatefulWidget {
  @override
  _UploadSelfieScreenState createState() => _UploadSelfieScreenState();
}

class _UploadSelfieScreenState extends State<UploadSelfieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload Selfie"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 140.0,
                      height: 140.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: ImageWidget(
                            imagePath: "ic_user_circle.png",
                            width: 140.0,
                            height: 140.0,
                            isFill: true),
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      right: 15.0,
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        child: CircleAvatar(
                          backgroundColor: orange,
                          child: ImageWidget(
                              imagePath: "ic_camera.png",
                              width: 25.0,
                              height: 25.0,
                              isFill: true),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextWidget(
                    text: AppStringConstants.UPLOAD_IMAGE_DESCRIPTION,
                    textSize: 12.0,
                    textColor: black1,
                    textFontWeight: FontWeight.w500,
                    textAlign: TextAlign.center),
              ],
            ),
          ),
          MyElevatedButton(
              buttonText: "Done",
              textColor: Colors.white,
              buttonBgColor: orange,
              onPress: () {}),
        ],
      ),
    );
  }
}

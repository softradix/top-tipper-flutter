import 'package:flutter/cupertino.dart';

class OnBoardSlideModel {
  String imagePath;
  String title;
  String subTitle;

  OnBoardSlideModel(
      {@required this.imagePath,
      @required this.title,
      @required this.subTitle});
}

final slide_list = [
  OnBoardSlideModel(
      imagePath: "on_board_one.png",
      title: "Sign Up!",
      subTitle:
          "A homeowner will provide either: \n1. Their personalized QR code \n2. Their direct TopTipper profile url\n (example: toptipper.co/johnsmith) \n \nIf you haven’t been invited yet, no worries! Sign up on your own!"),
  OnBoardSlideModel(
      imagePath: "on_board_two.png",
      title: "Start receiving tips!",
      subTitle:
          "Once you’re in the system, sit back and relax. Homeowners can now directly initiate a tipping relationship with you. You’ll be notified when someone tips you!"),
  OnBoardSlideModel(
      imagePath: "on_board_third.png",
      title: "Review history!",
      subTitle: "Review all of your tip transaction history all in one place!"),
  OnBoardSlideModel(
      imagePath: "on_board_third.png",
      title: "Review history!",
      subTitle: "Review all of your tip transaction history all in one place!")
];

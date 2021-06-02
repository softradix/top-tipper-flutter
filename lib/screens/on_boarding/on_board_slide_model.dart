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

final tipper_slide_list = [
  OnBoardSlideModel(
      imagePath: "tipper_onboard_1.png",
      title: "Make someone's day",
      subTitle:
          "Doctors claim that kindness releases the\n hormone oxytocin which is known to reduce \nhigh blood pressure and lead to better health.\n Easily show kindness to your favorite service\n providers with one tap."),
  OnBoardSlideModel(
      imagePath: "tipper_onboard_2.png",
      title: "Earn Top Tipper status in \nyour town",
      subTitle:
          "Each time you tip someone you earn points \nand a spot on the leaderboard!"),
  OnBoardSlideModel(
      imagePath: "tipper_onboard_3.png",
      title: "Improve service and \nrelationships!",
      subTitle: "People who are rewarded for their work tend \nto go the extra mile. When you're kind to your \nproviders, they'll strive to do a better job for \nyou. It's a win-win!"),
  OnBoardSlideModel(
      imagePath: "tipper_onboard_4.png",
      title: "Feel good guaranteed!",
      subTitle: "It's easy to get your own custom QR \ncode and tip someone today! Make it\n even easier by adding your contacts on\n the next screen."),
  OnBoardSlideModel(
      imagePath: "tipper_onboard_4.png",
      title: "Feel good guaranteed!",
      subTitle: "It's easy to get your own custom QR \ncode and tip someone today! Make it\n even easier by adding your contacts on\n the next screen.")
];

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/nationwide_leaderboard/leaderboard_screen.dart';
import 'package:flutter_top_tipper/screens/on_boarding/slide_dots.dart';
import 'package:flutter_top_tipper/screens/on_boarding/slide_item.dart';
import 'package:flutter_top_tipper/screens/on_boarding/video_player_screen.dart';
import 'package:flutter_top_tipper/sessionManager/SessionManager.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';
import 'package:flutter_top_tipper/widgets/text_widget.dart';
import 'package:video_player/video_player.dart';

import 'on_board_slide_model.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen(this.role);
  final String role;

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  bool isSkipVisible = true;
  PageController _pageController = PageController(initialPage: 0);
  SessionManager _sessionManager;

  String role;
  List<OnBoardSlideModel> mList;
  @override
  void initState() {
    super.initState();
    role = widget.role;
    // _sessionManager = SessionManager();
    // _sessionManager?.getString(AppStringConstants.ROLE_TYPE)?.then((value) =>
    // {
    //   role = value
    // });

    print(role);
    mList = role==AppStringConstants.ROLE_SERVICE_PROVIDER?slide_list:tipper_slide_list;
    // Timer.periodic(Duration(seconds: 5), (timer) {
    //   if (_currentPage < mList.length) {
    //     _currentPage++;
    //   } else {
    //     _currentPage = 0;
    //   }
    //   _pageController.animateToPage(_currentPage,
    //       duration: Duration(microseconds: 300), curve: Curves.elasticIn);
    // });
  }

  movePage() {
    setState(() {
      if (_currentPage < mList.length) {
        print("before=>$_currentPage");
        _pageController.animateToPage(_currentPage,
            duration: Duration(microseconds: 300), curve: Curves.elasticIn);
      } else {
        print("equal=>$_currentPage");
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => NationWideLeaderBoard(role)));
      }

    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      if (index < mList.length) {
        isSkipVisible = true;
      } else {
        isSkipVisible = false;
      }
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          color: orange,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Container(
                      child: ImageWidget(
                          imagePath: "on_boarding_mask.png",
                          width: double.infinity,
                          height: double.infinity,
                          isFill: true),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                    PageView.builder(
                        onPageChanged: _onPageChanged,
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        itemCount: mList.length,
                        itemBuilder: (context, index) => role==AppStringConstants.ROLE_SERVICE_PROVIDER? _currentPage == 3
                            ? MyVideoPlayerScreen()
                            : SlideItem(imagePath: mList[index].imagePath,title: mList[index].title,subTitle: mList[index].subTitle,)
                            : _currentPage == 4
                            ? MyVideoPlayerScreen()
                            : SlideItem(imagePath: mList[index].imagePath,title: mList[index].title,subTitle: mList[index].subTitle,)),
                    Positioned(
                      bottom: 10.0,
                      child: Row(
                        children: [
                          for (int i = 0; i < mList.length; i++)
                            if (i == _currentPage)
                              SlideDots(true)
                            else
                              SlideDots(false)
                        ],
                      ),
                    ),

                    Positioned(
                      top: 20.0,
                      right: 20.0,
                      child: Visibility(
                        visible: isSkipVisible,
                        child: InkWell(
                          onTap: (){
                            _currentPage++;
                            movePage();
                          },
                          child: TextWidget(
                            text: "Skip",
                            textSize: 14.0,
                            textColor: black1,
                            textFontWeight: FontWeight.w700,textAlign: TextAlign.end,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 17.0,
              ),
              MyElevatedButton(
                  buttonText: AppStringConstants.CONTINUE,
                  textColor: orange,
                  buttonBgColor: Colors.white,
                  onPress: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NationWideLeaderBoard(role)));
                  }),
              SizedBox(
                height: 17.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

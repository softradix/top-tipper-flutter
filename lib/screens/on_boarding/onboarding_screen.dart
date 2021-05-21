import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/app_string_constants.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:flutter_top_tipper/screens/nationwide_leaderboard/leaderboard_screen.dart';
import 'package:flutter_top_tipper/screens/on_boarding/slide_dots.dart';
import 'package:flutter_top_tipper/screens/on_boarding/slide_item.dart';
import 'package:flutter_top_tipper/widgets/elevated_button.dart';
import 'package:flutter_top_tipper/widgets/image_widget.dart';

import 'on_board_slide_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  bool isSkipVisible = true;
  PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    // Timer.periodic(Duration(seconds: 5), (timer) {
    //   if (_currentPage < slide_list.length) {
    //     _currentPage++;
    //   } else {
    //     _currentPage = 0;
    //   }
    //   _pageController.animateToPage(_currentPage,
    //       duration: Duration(microseconds: 300), curve: Curves.elasticIn);
    // });
  }

  movePage() {
    if (_currentPage < slide_list.length) {
      _currentPage++;
    } else {
      _currentPage = 0;
    }
    _pageController.animateToPage(_currentPage,
        duration: Duration(microseconds: 300), curve: Curves.elasticIn);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      if (index < slide_list.length) {
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
                        Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Visibility(
                            visible: isSkipVisible,
                            child: GestureDetector(
                              onTap: () {
                                print("clicked");
                                movePage();
                              },
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  "Skip",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    PageView.builder(
                        onPageChanged: _onPageChanged,
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        itemCount: slide_list.length,
                        itemBuilder: (context, index) => SlideItem(index)),
                    Positioned(
                      bottom: 10.0,
                      child: Row(
                        children: [
                          for (int i = 0; i < slide_list.length; i++)
                            if (i == _currentPage)
                              SlideDots(true)
                            else
                              SlideDots(false)
                        ],
                      ),
                    )
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
                            builder: (context) => NationWideLeaderBoard()));
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

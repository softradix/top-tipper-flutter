import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  ImageWidget({@required this.imagePath,@required this.width,@required this.height,@required this.isFill});
  final String imagePath;
  final double height;
  final double width;
  final bool isFill;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/$imagePath",
      fit: isFill?BoxFit.fill:BoxFit.contain,
      height: height,
      width: width,
      alignment: Alignment.center,
    );
  }
}

import 'package:flutter/material.dart';


class AppStyle {


  static TextStyle style14(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: responsiveFont(context: context, fontSize: 14),
      fontWeight: FontWeight.w500,
    );
  }


  static double scaleFactor(double width) {
    if (width < 600) {
      return width / 400;
    } else if (width > 900) {
      return width / 1000;
    } else {
      return width / 300;
    }
  }

  static double responsiveFont(
      {required double fontSize, required BuildContext context}) {
    double width = MediaQuery
        .sizeOf(context)
        .width;
    double scalefactor = scaleFactor(width);
    double lowerLimit = fontSize * .8;
    double upperLimit = fontSize * 1.3;

    double responsiveFont = fontSize * scalefactor;
    return responsiveFont.clamp(lowerLimit, upperLimit);
  }
}


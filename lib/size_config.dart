import 'package:flutter/material.dart';

class SizeConfig {

  static MediaQueryData _mediaQueryData = MediaQueryData();
  static double screenWidth = 0;
  static double screenHeight= 0;
  static double defaultSize= 0;
  static Orientation orientation = Orientation.portrait;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) {

  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 812.0) * screenHeight;

}

double getProportionateScreenWidth(double inputWidth) {

  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0) * screenWidth;

}
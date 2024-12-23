import 'package:flutter/material.dart';

extension MediaQueryExtensions on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double percentageWidth(double percentage) => screenWidth * percentage;
  double percentageHeight(double percentage) => screenHeight * percentage;
}

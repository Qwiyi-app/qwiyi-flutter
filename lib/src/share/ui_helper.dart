


import 'package:flutter/material.dart';

/// Contains useful consts to reduce boilerplate and duplicate code
class UIHelper {
//font size
  static const double kSmallFont = 5.0;
  static const double kMediumFont = 36;
  static const double kLargeFont = 24.0;

  // Vertical spacing constants. Adjust to your liking.
  static const double _verticalSpaceSmall = 10.0;
  static const double _verticalSpaceMedium = 30.0;
  static const double _verticalSpaceMediumPlus = 48.0;
  static const double _verticalSpaceLarge = 60.0;

  // Horizontal spacing constants. Adjust to your liking.
  static const double _horizontalSpaceSmall = 10.0;
  static const double _horizontalSpaceMedium = 20.0;
  static const double _horizontalSpaceLarge = 60.0;

  static const Widget verticalSpaceSmall =
      SizedBox(height: _verticalSpaceSmall);
  static const Widget verticalSpaceMedium =
      SizedBox(height: _verticalSpaceMedium);
  static const Widget verticalSpaceMediumPlus =
      SizedBox(height: _verticalSpaceMediumPlus);
  static const Widget verticalSpaceLarge =
      SizedBox(height: _verticalSpaceLarge);

  static const Widget horizontalSpaceSmall =
      SizedBox(width: _horizontalSpaceSmall);
  static const Widget horizontalSpaceMedium =
      SizedBox(width: _horizontalSpaceMedium);
  static const Widget horizontalSpaceLarge =
      SizedBox(width: _horizontalSpaceLarge);
}

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double screenAwareSize(double value, BuildContext context,
    {bool width = false}) {
  if (width) {
    return MediaQuery.of(context).size.width * (value / 414);
  } else {
    return MediaQuery.of(context).size.height * (value / 1181);
  }
}

addVerticalSp(double doublespace) {
  return SizedBox(
    height: doublespace,
  );
}

addHorizontalSp(double doubleSpace) {
  return SizedBox(
    width: doubleSpace,
  );
}

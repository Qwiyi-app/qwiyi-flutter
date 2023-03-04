import 'package:flutter/material.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';

class QwiyiTypography {
  // fontWeight: FontWeight.w500,
  static TextStyle normalPrimaryTextStyle(BuildContext? context) =>
      const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: UIHelper.kMediumFont,
          color: primaryColor,
          fontFamily: "montserrat");

  static TextStyle normalTextStyle(BuildContext? context) => const TextStyle(
        fontWeight: FontWeight.w100,
      );

  static TextStyle normalSecondaryTextStyle(BuildContext? context) =>
      const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: UIHelper.kMediumFont,
          color: backgroundColor,
          fontFamily: "montserrat");

  static TextStyle bigPrimaryTextStyle(BuildContext? context) =>
      const TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: UIHelper.kLargeFont,
          color: primaryColor,
          fontFamily: "montserrat");

  TextStyle bigSecondaryTextStyle(BuildContext? context) => const TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: UIHelper.kLargeFont,
      color: backgroundColor,
      fontFamily: "montserrat");

  static TextStyle bigTextStyle(BuildContext? context) => const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: UIHelper.kLargeFont,
      fontFamily: "montserrat");
}

class DummyText extends StatelessWidget {
  const DummyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Dummy Text',
      style: QwiyiTypography.normalTextStyle(context),
    );
  }
}

InputDecoration textFieldDecoration(String hintText, bool showIcon) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    hintText: hintText,
    filled: true,
    fillColor: textFieldColor,
    hintStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: primaryColor.withOpacity(0.3)),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor.withOpacity(0.1)),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor.withOpacity(0.1)),
      borderRadius: BorderRadius.circular(10),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor.withOpacity(0.1)),
      borderRadius: BorderRadius.circular(10),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor.withOpacity(0.1)),
      borderRadius: BorderRadius.circular(10),
    ),
    prefixIcon: showIcon == true
        ? Image.asset(
            'asset/images/naira icon.png',
            scale: 2.5,
          )
        : null,
    suffixIcon: showIcon == true
        ? Image.asset(
            'asset/images/edit icon.png',
            scale: 1.5,
          )
        : null,
  );
}

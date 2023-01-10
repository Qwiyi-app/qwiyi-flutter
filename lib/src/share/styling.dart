import 'package:flutter/material.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';

TextStyle normalPrimaryTextStyle(BuildContext? context) => const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: UIHelper.kMediumFont,
    color: primaryColor,
    fontFamily: "montserrat");
TextStyle normalSecondaryTextStyle(BuildContext? context) => const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: UIHelper.kMediumFont,
    color: backgroundColor,
    fontFamily: "montserrat");
TextStyle bigPrimaryTextStyle(BuildContext? context) => const TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: UIHelper.kLargeFont,
    color: primaryColor,
    fontFamily: "montserrat");
TextStyle bigSecondaryTextStyle(BuildContext? context) => const TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: UIHelper.kLargeFont,
    color: backgroundColor,
    fontFamily: "montserrat");

InputDecoration textFieldDecoration(String hintText) {
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
  );
}

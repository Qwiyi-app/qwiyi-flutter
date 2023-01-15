// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import '../share/color.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton(
      {super.key,
      required this.press,
      required this.text,
      required this.width,
      required this.textSize});

  GestureTapCallback press;
  String text;
  double width, textSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: press,
        child: Container(
          height: screenAwareSize(55, context),
          width: screenAwareSize(width, context, width: true),
          decoration: const BoxDecoration(
              color: primaryColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Center(
              child: Text(text,
                  style: QwiyiTypography.normalSecondaryTextStyle(context)
                      .copyWith(
                          fontSize: textSize, fontWeight: FontWeight.w700))),
        ));
  }
}

class SecondaryButton extends StatelessWidget {
  SecondaryButton(
      {super.key,
      required this.press,
      required this.text,
      required this.radius,
      required this.width,
      required this.textSize});

  GestureTapCallback press;
  String text;
  double width, textSize, radius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: press,
        child: Container(
            height: screenAwareSize(55, context),
            width: screenAwareSize(width, context, width: true),
            decoration: BoxDecoration(
                color: secondaryColor.withOpacity(0.43),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Center(
              child: Text(text,
                  style: QwiyiTypography.normalSecondaryTextStyle(context)
                      .copyWith(
                          fontSize: textSize,
                          fontWeight: FontWeight.w700,
                          color: primaryColor)),
            )));
  }
}

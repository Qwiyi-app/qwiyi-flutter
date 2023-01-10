import 'package:flutter/material.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';

    class QwiyiTypography{

    static TextStyle smallTextStyle(BuildContext? context) => const TextStyle(
   // fontWeight: FontWeight.w500,
    fontSize: UIHelper.kSmallFont,
    fontFamily: "montserrat");

     static TextStyle normalTextStyle(BuildContext? context) => const TextStyle(
    fontWeight: FontWeight.w100,
    fontSize: UIHelper.kMediumFont,
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


import 'package:flutter/material.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';

TextStyle smallTextStyle(BuildContext? context) => const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: UIHelper.kSmallFont,
    fontFamily: "montserrat");
TextStyle normalTextStyle(BuildContext? context) => const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: UIHelper.kMediumFont,
    fontFamily: "montserrat");

TextStyle bigTextStyle(BuildContext? context) => const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: UIHelper.kLargeFont,
    fontFamily: "montserrat");
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

void popSheet(BuildContext context) {
  Navigator.of(context).pop();
}

navigateToRoute(BuildContext context, dynamic routeClass) {
  Navigator.push(context, CupertinoPageRoute(builder: (context) => routeClass));
}

void navigateAndReplaceRoute(BuildContext? context, dynamic routeClass) {
  Navigator.pushReplacement(
      context!, CupertinoPageRoute(builder: (context) => routeClass));
}

void navigateAndRemoveUntilRoute(BuildContext? context, dynamic routeClass) {
  Navigator.pushAndRemoveUntil(context!,
      CupertinoPageRoute(builder: (context) => routeClass), (route) => false);
}

void dismissKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

NumberFormat currency(context) {
  var format =
      NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
  return format;
}

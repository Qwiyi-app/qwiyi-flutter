import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages


class NavigatorRoute {
  NavigatorRoute._();

  static NavigatorRoute instance = NavigatorRoute._();
  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
  static GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static navigateToRoute(dynamic routeClass) {
    Navigator.push(navigatorKey!.currentContext!,
        CupertinoPageRoute(builder: (context) => routeClass));
  }

  static void navigateAndReplaceRoute(dynamic routeClass) {
    Navigator.pushReplacement(navigatorKey!.currentContext!,
        CupertinoPageRoute(builder: (context) => routeClass));
  }

  static void navigateAndRemoveUntilRoute(dynamic routeClass) {
    Navigator.pushAndRemoveUntil(navigatorKey!.currentContext!,
        CupertinoPageRoute(builder: (context) => routeClass), (route) => false);
  }
}

// NumberFormat currency(context) {
//   var format =
//       NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
//   return format;
// }

// class NumberFormat {
//   static simpleCurrency({required String locale, required String name}) {}
// }

// NumberFormat usCurrency(context) {
//   var format =
//       NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'USD');
//   return format;
// }

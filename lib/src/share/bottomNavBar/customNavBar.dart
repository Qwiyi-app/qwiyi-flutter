// ignore_for_file: must_be_immutable, file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/home_screen/view/homeScreen.dart';
import 'package:qwiyi_flutter/src/screens/menu/presentation/user_detail.dart';
import 'package:qwiyi_flutter/src/screens/transaction/tranasaction_view.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';

class CustomNavBar extends StatefulWidget {
  CustomNavBar({
    super.key,
    required this.selectedIndex,
  });

  int selectedIndex;

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.only(left: 16.sp, right: 16.sp, bottom: 24.sp),
      child: Container(
        height: screenAwareSize(88.sp, context),
        width: screenWidth(context),
        decoration: BoxDecoration(
            color: secondaryColor.withOpacity(0.43),
            border: Border.all(
                style: BorderStyle.solid,
                color: secondaryColor.withOpacity(0.8),
                width: 1.5),
            borderRadius: BorderRadius.circular(20.sp)),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          enableFeedback: true,
          currentIndex: widget.selectedIndex,
          elevation: 0,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: kBColor.withOpacity(0.5),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.circle_outlined,
                  color: kBColor.withOpacity(0.5),
                ),
                label: 'Transactions'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: kBColor.withOpacity(0.5),
                ),
                label: 'Menu')
          ],
          onTap: (value) => setState(() {
            widget.selectedIndex = value;
            switch (value) {
              case 0:
                if (value == 0) {
                  NavigatorRoute.navigateAndReplaceRoute(const HomeScreen());
                }
                break;
              case 1:
                if (value == 1) {
                  NavigatorRoute.navigateAndReplaceRoute(TransactionView());
                }
                break;
              case 2:
                if (value == 2) {
                  NavigatorRoute.navigateAndReplaceRoute(const MenuView());
                }
            }
          }),
        ),
      ),
    ));
  }
}

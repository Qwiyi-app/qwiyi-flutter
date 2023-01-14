// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/add_money/add_money.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/add_money/withdraw/withdraw_view.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/brand_buttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.only(top: screenAwareSize(20, context)),
          child: Text(
            'Welcome, Nikky',
            style: QwiyiTypography.normalPrimaryTextStyle(context)
                .copyWith(fontSize: 24.sp),
          ),
        ),
      ),
      body: SafeArea(
          child: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: Column(
          children: [
            addVerticalSp(14.sp),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: screenAwareSize(18.sp, context),
                  horizontal: screenAwareSize(28.sp, context, width: true)),
              child: Container(
                width: screenWidth(context),
                height: screenAwareSize(190.sp, context),
                decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: kBColor.withOpacity(0.2),
                      width: 3.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: kBColor.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 10),
                      )
                    ]),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        '${currency(context).currencySymbol} 100,000.00',
                        style: QwiyiTypography.bigPrimaryTextStyle(context)
                            .copyWith(
                                color: kBColor,
                                fontSize: 36.sp,
                                fontFamily: 'Roboto'),
                      ),
                    ),
                    Positioned(
                        left: screenAwareSize(265.sp, context, width: true),
                        top: screenAwareSize(135.sp, context),
                        right: screenAwareSize(15.sp, context, width: true),
                        bottom: screenAwareSize(25.sp, context),
                        child: const Icon(
                          Icons.remove_red_eye,
                          color: kBColor,
                        ))
                  ],
                ),
              ),
            ),
            addVerticalSp(20.sp),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 46.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SecondaryButton(
                        press: () {
                          navigateToRoute(context, AddMoney());
                        },
                        text: 'Add money',
                        radius: 10.sp,
                        width: screenAwareSize(127.sp, context, width: true),
                        textSize: 15.sp),
                    SecondaryButton(
                        press: () {
                          navigateToRoute(context, WithdrawView());
                        },
                        text: 'Withdraw',
                        radius: 10.sp,
                        width: screenAwareSize(127.sp, context, width: true),
                        textSize: 15.sp)
                  ],
                )),
            addVerticalSp(52.sp),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 36.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10.sp, 10.sp, 10.sp, 10.sp),
                      height: screenAwareSize(140.sp, context),
                      width: screenAwareSize(140.sp, context, width: true),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Send Money',
                            style: QwiyiTypography.normalSecondaryTextStyle(
                                    context)
                                .copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(5.sp, 10.sp, 10.sp, 10.sp),
                        height: screenAwareSize(140.sp, context),
                        width: screenAwareSize(140.sp, context, width: true),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(
                                    'asset/images/qwiyi_qr_code.png',
                                    height: screenAwareSize(36.sp, context),
                                    width: screenAwareSize(36.sp, context,
                                        width: true),
                                    color: secondaryColor,
                                  )),
                              Text(
                                'Generate Qr \nCode',
                                style: QwiyiTypography.normalSecondaryTextStyle(
                                        context)
                                    .copyWith(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700),
                              )
                            ]))
                  ],
                )),
            addVerticalSp(31.sp),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 36.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10.sp, 10.sp, 10.sp, 10.sp),
                      height: screenAwareSize(140.sp, context),
                      width: screenAwareSize(140.sp, context, width: true),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Receive Money',
                            style: QwiyiTypography.normalSecondaryTextStyle(
                                    context)
                                .copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(5.sp, 10.sp, 10.sp, 10.sp),
                        height: screenAwareSize(140.sp, context),
                        width: screenAwareSize(140.sp, context, width: true),
                        decoration: BoxDecoration(
                          color: secondaryColor.withOpacity(0.43),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(Icons.notifications,
                                      color: kBColor.withOpacity(0.7))),
                              Text(
                                'Notifications',
                                style: QwiyiTypography.normalSecondaryTextStyle(
                                        context)
                                    .copyWith(
                                        fontSize: 16.sp,
                                        color: primaryColor,
                                        fontWeight: FontWeight.w700),
                              )
                            ]))
                  ],
                )),
          ],
        ),
      )),
      bottomNavigationBar: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 16.sp, right: 16.sp, bottom: 24.sp),
        child: Container(
          height: screenAwareSize(96.sp, context),
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
              ]),
        ),
      )),
    );
  }
}

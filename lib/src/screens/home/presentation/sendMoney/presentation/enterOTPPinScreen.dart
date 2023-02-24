// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/sendMoney/presentation/doneScreen.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/brand_buttons.dart';

class EnterOTPPinScreen extends StatefulWidget {
  const EnterOTPPinScreen({super.key});

  @override
  State<EnterOTPPinScreen> createState() => _EnterOTPPinScreenState();
}

class _EnterOTPPinScreenState extends State<EnterOTPPinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SizedBox(
            height: screenHeight(context),
            width: screenWidth(context),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  addVerticalSp(60.sp),
                  Text(
                    'Enter Pin',
                    style: QwiyiTypography.bigTextStyle(context).copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 30.sp,
                    ),
                  ),
                  addVerticalSp(60.sp),
                  Pinput(
                    separator: addHorizontalSp(20),
                    defaultPinTheme: PinTheme(
                        height: 60,
                        width: 56,
                        textStyle: QwiyiTypography.bigTextStyle(context),
                        decoration: BoxDecoration(
                            color: secoondaryColor.withOpacity(0.43),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  addVerticalSp(110.sp),
                  PrimaryButton(
                    text: 'Confirm',
                    width: 150.sp,
                    textSize: 16.sp,
                    press: () {
                      NavigatorRoute.navigateAndReplaceRoute(
                        const DoneSendMoneyScreen(),
                      );
                    },
                  )
                ],
              ),
            )),
      ),
    );
  }
}

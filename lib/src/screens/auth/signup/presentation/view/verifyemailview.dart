import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/auth/saveaccount/presentation/view/saveAccountView.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/brand_buttons.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              'asset/images/paper-plane.png',
              scale: 1.2.sp,
            ),
          ),
          addVerticalSp(5.sp),
          Text(
            'Verify Email',
            style: QwiyiTypography.bigPrimaryTextStyle(context)
                .copyWith(fontSize: 32.sp, fontWeight: FontWeight.w800),
          ),
          addVerticalSp(30.sp),
          Padding(
            padding: EdgeInsets.only(left: 30.sp, right: 30.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'We sent a verification email to your email address',
                  style: QwiyiTypography.normalPrimaryTextStyle(context),
                ),
                Text(
                  'janedoe@gmail.com',
                  style: QwiyiTypography.normalPrimaryTextStyle(context)
                      .copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Please click on that link to verify your email address.',
                  style: QwiyiTypography.normalPrimaryTextStyle(context),
                ),
              ],
            ),
          ),
          addVerticalSp(65.sp),
          PrimaryButton(
              press: () {
                NavigatorRoute.navigateAndReplaceRoute(
                    const SaveAccountScreen());
              },
              text: 'Resend Email',
              width: 220.sp,
              textSize: 18.sp)
        ],
      )),
    );
  }
}

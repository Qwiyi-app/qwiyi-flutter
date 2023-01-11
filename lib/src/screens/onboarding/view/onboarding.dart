import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/auth/signin/presentation/view/signinview.dart';
import 'package:qwiyi_flutter/src/screens/auth/signup/presentation/view/signupview.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/brand_buttons.dart';

class OnboardingScreeen extends StatelessWidget {
  const OnboardingScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: screenHeight(context),
          width: screenWidth(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Qwiyi',
                  style:
                      QwiyiTypography.bigPrimaryTextStyle(context).copyWith(fontSize: 36.sp)),
              Container(
                height: screenAwareSize(365, context),
                width: screenAwareSize(235, context, width: true),
                decoration: const BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                    child: Image.asset('asset/images/qwiyi_qr_code.png')),
              ),
              SizedBox(
                  child: Column(
                children: [
                  PrimaryButton(
                      press: () =>
                          navigateToRoute(context, const SignInScreen()),
                      text: 'Sign In',
                      width: 150,
                      textSize: 18.sp),
                  addVerticalSp(16),
                  Text(
                    "Don't have an account?",
                    style: QwiyiTypography.normalPrimaryTextStyle(context)
                        .copyWith(fontSize: 14.sp),
                  ),
                  addVerticalSp(9),
                  InkWell(
                    onTap: () {
                      navigateToRoute(context, const SignUpScreen());
                    },
                    child: Text(
                      "Sign Up for Qwiyi",
                      style: QwiyiTypography.normalPrimaryTextStyle(context).copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

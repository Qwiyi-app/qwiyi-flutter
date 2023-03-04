import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/onboarding/view/onboarding.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..forward();

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      NavigatorRoute.navigateAndRemoveUntilRoute(const OnboardingScreeen());
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      NavigatorRoute.navigateToRoute(const OnboardingScreeen());
    });
    // ScreenUtil.init(context);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (BuildContext context, child) {
                return Transform.rotate(
                  angle: controller.value * 2 * math.pi,
                  child: child,
                );
              },
              child: Image.asset(
                "asset/images/qwiyi.png",
                height: screenAwareSize(280.sp, context),
                width: screenAwareSize(180.sp, context, width: true),
              ),
            ),
            SizedBox(
              height: screenAwareSize(90.sp, context),
              width: double.infinity,
              child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: const Duration(seconds: 3),
                  builder: ((context, double value, child) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: value * 30.sp,
                      ),
                      child: child!,
                    );
                  }),
                  child: Center(
                    child: Text(
                      'Qwiyi',
                      style: QwiyiTypography.normalPrimaryTextStyle(context)
                          .copyWith(fontSize: 24.sp, color: Colors.black),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

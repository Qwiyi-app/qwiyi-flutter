import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:qwiyi_flutter/src/screens/onboarding/view/onboarding.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
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
  void initState(){
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
                height: screenAwareSize(280, context),
                width: screenAwareSize(180, context, width: true),
              ),
            )
            // TweenAnimationBuilder(
            //   tween: Tween<double>(begin: 0, end: 1),
            //   duration: const Duration(milliseconds: 1000),
            //   child: Image.asset(
            //             "asset/logos/qwiyi.png",
            //             height: screenAwareSize(180, context),
            //             width: screenAwareSize(50, context, width: true),
            //           ),
            // ),
          ],
        ),
      ),
    );
  }
}

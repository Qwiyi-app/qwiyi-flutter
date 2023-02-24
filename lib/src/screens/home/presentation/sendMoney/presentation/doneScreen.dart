// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/home_screen/view/homeScreen.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/brand_buttons.dart';

class DoneSendMoneyScreen extends StatefulWidget {
  const DoneSendMoneyScreen({super.key});

  @override
  State<DoneSendMoneyScreen> createState() => _DoneSendMoneyScreenState();
}

class _DoneSendMoneyScreenState extends State<DoneSendMoneyScreen> {
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
              NavigatorRoute.navigateToRoute(
                const HomeScreen(),
              );
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
                  addVerticalSp(20),
                  Text(
                    'Sent',
                    style:
                        QwiyiTypography.bigPrimaryTextStyle(context).copyWith(
                      fontSize: 32.sp,
                    ),
                  ),
                  addVerticalSp(90),
                  CircleAvatar(
                    radius: 90,
                    backgroundColor: secoondaryColor.withOpacity(0.43),
                    // child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_jy2fkag5.json',
                    // controller: _controller,
                    // onLoaded: (value){
                    //   _controller
                    //   ..duration = value.duration
                    //   ..forward();
                    // }
                    // )
                    child: const Icon(
                      Icons.check,
                      color: kBColor,
                      size: 60,
                    ),
                  ),
                  addVerticalSp(120),
                  PrimaryButton(
                    text: 'See Transaction Details',
                    width: 228.sp,
                    textSize: 16.sp,
                    press: () {},
                  )
                ],
              ),
            )),
      ),
    );
  }
}

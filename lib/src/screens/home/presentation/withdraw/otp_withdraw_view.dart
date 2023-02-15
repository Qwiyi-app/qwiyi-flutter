
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/withdraw/withdrawal_done_view.dart';
import 'package:qwiyi_flutter/src/share/appbar/app_bar.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/button/brand_button.dart';

class WithdrawOTP extends StatelessWidget {
  const WithdrawOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  QwiyiAppBar(
        rIcon: Icons.close,
        rColor: kBColor,
        onTap: () => Navigator.pop(context),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: screenHeight(context),
        width: screenWidth(context),
        child: Column(
          children: [
            addVerticalSp(40),
            Padding(
             padding: EdgeInsets.only(right: 130.w),
              child: Text(
                'Enter Pin',  
                 style: QwiyiTypography.bigTextStyle(context).copyWith(
                   color: primaryColor, fontWeight: FontWeight.w900, fontSize: 30.sp
                   ),),
            ),
            UIHelper.verticalSpaceMedium,
              Pinput(
                separator: addHorizontalSp(20),
                defaultPinTheme: PinTheme(
                  height: 60,
                  width: 56,
                  textStyle: QwiyiTypography.bigTextStyle(context),
                  decoration: BoxDecoration(
                    color: secoondaryColor.withOpacity(0.5), 
                  borderRadius: BorderRadius.circular(10)) ),
              ),
              addVerticalSp(100),
              QwiyiButton(
                onClick: () => NavigatorRoute.navigateToRoute(const DoneWithdrawal()),
                label: 'Confirm',
              )
          ],
        )
      ),
    );
  }
}
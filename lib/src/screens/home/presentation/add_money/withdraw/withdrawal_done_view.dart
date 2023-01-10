

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/add_money/withdraw/withdraw_view.dart';
import 'package:qwiyi_flutter/src/share/appbar/app_bar.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/brand_button.dart';

class DoneWithdrawal extends StatefulWidget {
  const DoneWithdrawal({super.key});

  @override
  State<DoneWithdrawal> createState() => _DoneWithdrawalState();
}

class _DoneWithdrawalState extends State<DoneWithdrawal> with TickerProviderStateMixin{
  late  AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar:  QwiyiAppBar(
        rIcon: Icons.close,
        rColor: kBColor,
        onTap: () => navigateAndRemoveUntilRoute(context, WithdrawView()),
      ),
      body: Container(
        width: screenWidth(context),
        height: screenHeight(context),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            UIHelper.verticalSpaceMedium,
            Text('Done', 
            style: QwiyiTypography.bigTextStyle(context).copyWith(
              fontWeight: FontWeight.w900, fontSize: 30.sp, color: primaryColor),),
            UIHelper.verticalSpaceMedium,
            CircleAvatar(
              radius: 90,
              backgroundColor: secoondaryColor,
              child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_jy2fkag5.json',
              controller: _controller,
              onLoaded: (value){
                _controller
                ..duration = value.duration
                ..forward();
              }
              )
             // Icon(Icons.check, color: kBColor, size: 60,),
            ),
            addVerticalSp(150),
            QwiyiButton(
              width: screenWidth(context),
              onClick: (){},
              label: 'See Transaction Receipt')
          ],
        ),
      ),
    );
  }
}

 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/add_money/add_money.dart';
import 'package:qwiyi_flutter/src/share/appbar/app_bar.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/button/brand_button.dart';

class PaymentOption extends StatelessWidget {
  const PaymentOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: QwiyiAppBar(
        rColor: Colors.white,
        onTap: () => navigateToRoute(context, AddMoney()),
        rIcon: Icons.close,
        ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: screenWidth(context),
        height: screenHeight(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpaceLarge,
           Text('Choose Payment method', 
           style: QwiyiTypography.bigTextStyle(context).copyWith(
             fontWeight: FontWeight.w900, color: Colors.white, fontSize: 29.sp
             )),
             UIHelper.verticalSpaceMedium,
            QwiyiButton(
            alignment: Alignment.centerLeft,
            width: screenWidth(context),
            onClick: (){}, label: 'USSD', background: Colors.grey,),
            UIHelper.verticalSpaceMedium,
            QwiyiButton(
            alignment: Alignment.centerLeft,
            width: screenWidth(context),
            onClick: (){}, label: 'Card', background: Colors.grey,),
            UIHelper.verticalSpaceMedium,
            QwiyiButton(
            alignment: Alignment.centerLeft,
            width: screenWidth(context),
            onClick: (){}, label: 'Transfer', background: Colors.grey,),
             ],
        ),
      ) ,
    );
  }
}
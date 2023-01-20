import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/withdraw/otp_withdraw_view.dart';
import 'package:qwiyi_flutter/src/share/appbar/app_bar.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/button/brand_button.dart';
import 'package:qwiyi_flutter/src/widget/button/input_button.dart';
import 'package:qwiyi_flutter/src/widget/textfield/input_textfield.dart';

class WithdrawView extends StatelessWidget {
   WithdrawView({super.key});

   final TextEditingController _amountController = TextEditingController();
   final TextEditingController _acctNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  QwiyiAppBar(
        lColor: kBColor,
        onClick: () => Navigator.pop(context),
        lIcon: Icons.arrow_back_ios,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              UIHelper.verticalSpaceLarge,
                Text('Withdraw', 
                style: QwiyiTypography.bigTextStyle(context).copyWith(
                  fontWeight: FontWeight.w900, fontSize: 35.sp, color: primaryColor),),
                  UIHelper.verticalSpaceMedium,
                QwiyiTextField(
                  textEditingController: _amountController,
                  keyboardType: TextInputType.number,
                  hintText: '0.00',
                  label: 'Enter Amount'
                  ),
                  UIHelper.verticalSpaceMedium,
                   QwiyiTextField(
                  textEditingController: _acctNoController,
                  keyboardType: TextInputType.number,
                  label: 'Account Number',
                  hintText: '1234 567 890',
                  ),
                  UIHelper.verticalSpaceMedium,
                   QwiyiInputButton(
                    label: 'Bank',
                    hintText: 'Enter Bank',
                    onTap: (){},
                  ),
                  addVerticalSp(60),
                  QwiyiButton(
                    width: screenWidth(context),
                    onClick: () => NavigatorRoute.navigateToRoute(const WithdrawOTP()), 
                  label: 'Withdraw'
                  )
                  
            ],
          ),
        ),
      ) ,
    );
  }
}


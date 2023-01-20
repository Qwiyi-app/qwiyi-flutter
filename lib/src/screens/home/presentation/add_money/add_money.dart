import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/add_money/payment_option.dart';
import 'package:qwiyi_flutter/src/share/appbar/app_bar.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/textfield/input_textfield.dart';
import '../../../../widget/button/brand_button.dart';

class AddMoney extends StatelessWidget {
  AddMoney({super.key});

  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QwiyiAppBar(
          lColor: kBColor,
          onClick: () => Navigator.pop(context),
          lIcon: Icons.arrow_back_ios),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        height: screenHeight(context),
        width: screenWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpaceMedium,
            UIHelper.verticalSpaceMedium,
            Text(
              'Add Money',
              style: QwiyiTypography.bigTextStyle(context).copyWith(
                color: primaryColor,
                fontSize: 35.sp,
                fontWeight: FontWeight.w900,
              ),
            ),
            UIHelper.verticalSpaceMedium,
            QwiyiTextField(
              label: 'Enter Amount',
              hintText: '1234 567 890',
              textEditingController: _amountController,
            ),
            UIHelper.verticalSpaceLarge,
            UIHelper.verticalSpaceLarge,
            QwiyiButton(
                width: screenAwareSize(250.w, context),
                onClick: () =>
                    NavigatorRoute.navigateToRoute(const PaymentOption()),
                label: 'Fund Wallet'),
            UIHelper.verticalSpaceMedium,
          ],
        ),
      ),
    );
  }
}

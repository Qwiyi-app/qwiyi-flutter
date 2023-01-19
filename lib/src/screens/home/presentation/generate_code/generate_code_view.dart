import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qwiyi_flutter/src/screens/home/home_provider.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/add_money/add_money.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/generate_code/qr_view.dart';
import 'package:qwiyi_flutter/src/share/appbar/app_bar.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/button/brand_button.dart';
import 'package:qwiyi_flutter/src/widget/button/input_button.dart';
import 'package:qwiyi_flutter/src/widget/textfield/input_textfield.dart';



class GenerateQR extends StatelessWidget {
   GenerateQR({super.key}); 

  final TextEditingController _accountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QwiyiAppBar(
        lColor: kBColor,
        onClick: ()=> navigateAndRemoveUntilRoute(context, AddMoney()),
        lIcon: Icons.arrow_back_ios
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          width: screenWidth(context),
          height: screenHeight(context),
          child: Column(
            children: [
              UIHelper.verticalSpaceMedium,
              UIHelper.verticalSpaceMedium,
              Text('Generate QR Code',
              style: QwiyiTypography.bigTextStyle(context).copyWith(
                color: primaryColor,
                fontSize: 24.sp,
                fontWeight: FontWeight.w900,
                ),),
                UIHelper.verticalSpaceSmall,
                 Text('Receive payments easy with just scan and pay',
              style: QwiyiTypography.bigTextStyle(context).copyWith(
                color: primaryColor,
                fontSize: 12.sp,
               // fontWeight: FontWeight.w900,
                ),),
                UIHelper.verticalSpaceMedium,
                QwiyiTextField(
                  label: 'Account',
                  hintText: '1234 567 890',
                 keyboardType: TextInputType.number,
                textEditingController: _accountController,
                onChanged: (val) {
                  Provider.of<HomeFeatureProvider>(context, listen: false).generateQR(val);
                }
                ),
                UIHelper.verticalSpaceMedium,
                 QwiyiInputButton(
                      label: 'Bank Name',
                      hintText: 'Enter Bank',
                      onTap: (){},
                    ),
                    UIHelper.verticalSpaceMedium,
                    Text('Use your Qwiyi wallet',
              style: QwiyiTypography.bigTextStyle(context).copyWith(
                color: primaryColor,
                fontSize: 12.sp,
               // fontWeight: FontWeight.w900,
                ),),
                UIHelper.verticalSpaceLarge,
                UIHelper.verticalSpaceLarge,
                QwiyiButton(
                  onClick: ()=> navigateAndRemoveUntilRoute(context, 
                  QRView(acctName: _accountController.text,)) ,
                label: 'Generate Qr Code')
            ],
          )
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qwiyi_flutter/src/screens/home/home_provider.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/receive_money/receive_qr_code.dart';
import 'package:qwiyi_flutter/src/share/appbar/app_bar.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/button/brand_button.dart';
import 'package:qwiyi_flutter/src/widget/button/input_button.dart';
import 'package:qwiyi_flutter/src/widget/textfield/input_textfield.dart';



class ReceiveMoneyView extends StatelessWidget {
   ReceiveMoneyView({super.key});

  final TextEditingController _accountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QwiyiAppBar(
        lColor: kBColor,
        onClick: ()=> Navigator.pop(context),
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
             Container(
               decoration: BoxDecoration(
                 border: Border.all(color: primaryColor)
               ),
               height: 150.h,
               child: Image.asset('asset/images/qwiyi_qr_code.png', color: kBColor,),
             ),
                UIHelper.verticalSpaceMedium,
                QwiyiTextField(
                  label: 'Account',
                  hintText: '1234 567 890',
                 keyboardType: TextInputType.number,
                  textEditingController: _accountController,
                  onChanged: (value){
                   Provider.of<HomeFeatureProvider>(context, listen: false).receiveQR(value);
                  }
                ),
                UIHelper.verticalSpaceMedium,
                 QwiyiInputButton(
                      label: 'Choose account',
                      hintText: 'Enter Bank',
                      onTap: (){},
                    ),
                UIHelper.verticalSpaceLarge,
                UIHelper.verticalSpaceLarge,
                QwiyiButton(
                  onClick: ()=> NavigatorRoute.navigateToRoute(
                    RQRView(qr: _accountController.text,)) ,
                label: 'Generate Qr Code')
            ],
          )
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/menu/presentation/add&remove_account/add_account.dart';
import 'package:qwiyi_flutter/src/share/appbar/app_bar.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/button/brand_button.dart';
import 'package:qwiyi_flutter/src/widget/button/input_button.dart';
import 'package:qwiyi_flutter/src/widget/textfield/input_textfield.dart';

class AddNewAccount extends StatelessWidget {
   AddNewAccount({super.key});

 
  final TextEditingController _acctController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  QwiyiAppBar(
        rIcon: Icons.close,
        onTap: () => NavigatorRoute.navigateAndRemoveUntilRoute(const AddAccountView()),
      ),
      body: 
        Container(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Text('Save Account \nDetail',
              style: QwiyiTypography.bigTextStyle(context).copyWith(
                   fontWeight: FontWeight.w900,
                   color: primaryColor,
                   fontSize: 32.sp
                 ),
              ),
            ),
            UIHelper.verticalSpaceLarge,
            QwiyiInputButton(
              onTap: (){},
              hintText: 'Enter Bank',
              label: 'Bank Name'),
              UIHelper.verticalSpaceMedium,
              QwiyiTextField(
                label: 'Account Number',
                textEditingController: _acctController,
                hintText: '1234 567 890',
                ),
           const Spacer(),
           QwiyiButton(
             onClick: ()=> NavigatorRoute.navigateAndRemoveUntilRoute(const AddAccountView()),
             label: 'Save')
          ],
        ),
      
      ),
    
    );
  }
}
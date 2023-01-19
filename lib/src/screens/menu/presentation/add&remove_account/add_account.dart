import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qwiyi_flutter/src/screens/menu/presentation/add&remove_account/add_new_acct.dart';
import 'package:qwiyi_flutter/src/screens/menu/presentation/user_detail.dart';
import 'package:qwiyi_flutter/src/screens/menu/provider.dart';
import 'package:qwiyi_flutter/src/share/appbar/app_bar.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/button/brand_button.dart';

class AddAccountView extends StatelessWidget {
  const AddAccountView({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  QwiyiAppBar(
        rIcon: Icons.close,
        onTap: () => navigateAndRemoveUntilRoute(context, const UserDetail()),
      ),
      body:  Consumer<MenuFeatureProvider>(builder: (context, getIt, child){
        return Container(
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(
                leading: GestureDetector(
                  onTap: (){
                    getIt.toggle();
                  },
                  child: Container(
                    height: 25.h,
                    width: 30.w,
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: getIt.isChecked ? Icon(Icons.check, color: getIt.isChecked ? kBColor : Colors.white,) : Text('')
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name:',
                    style: QwiyiTypography.normalTextStyle(context)
                    .copyWith(color: primaryColor, fontSize: 14.sp),),
                      Text('Bank:',
                    style: QwiyiTypography.normalTextStyle(context)
                    .copyWith(color: primaryColor, fontSize: 14.sp),),
                      Text('Account Number',
                    style: QwiyiTypography.normalTextStyle(context)
                    .copyWith(color: primaryColor, fontSize: 14.sp),),
                  ],
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('John Doe',
                    style: QwiyiTypography.normalTextStyle(context)
                    .copyWith(color: primaryColor, fontSize: 14.sp),),
                      Text('Chrome Bank',
                    style: QwiyiTypography.normalTextStyle(context)
                    .copyWith(color: primaryColor, fontSize: 14.sp),),
                      Text('1234 567 890',
                    style: QwiyiTypography.normalTextStyle(context)
                    .copyWith(color: primaryColor, fontSize: 14.sp),),
                  ],
                ),
                   
              ),
            ),
            Spacer(),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                QwiyiButton(
                  width: 130.w,
                  onClick: () => navigateAndRemoveUntilRoute(context, AddNewAccount()),
                label: 'Add New'),
                addHorizontalSp(20),
                 QwiyiButton(
                   background: Colors.white,
                   width: 130.w,
                  onClick: (){},
                  textColor: primaryColor,
                label: 'Remove'),
              ],
            )
           
          ],
        ),
      );
      })
      //  bottomNavigationBar: SafeArea(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      //     child:  Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           QwiyiButton(
      //             width: 130.w,
      //             onClick: (){},
      //           label: 'Add New'),
      //           addHorizontalSp(20),
      //            QwiyiButton(
      //              width: 130.w,
      //             onClick: (){},
      //           label: 'Remove'),
      //         ],
      //       )
      //   ),
      // ),
    );
  }
}
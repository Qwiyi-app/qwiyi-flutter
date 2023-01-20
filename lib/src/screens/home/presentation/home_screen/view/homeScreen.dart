// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qwiyi_flutter/src/screens/home/home_provider.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/add_money/add_money.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/generate_code/generate_code_view.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/receive_money/receive_money.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/withdraw/withdraw_view.dart';
import 'package:qwiyi_flutter/src/screens/home/widget/home_feature.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/brand_buttons.dart';

class HomeScreen extends StatelessWidget {
 

   IconData _obscureText1 = Icons.visibility;
   IconData _obscureText2 = Icons.visibility_off;

  HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.only(top: screenAwareSize(20, context)),
          child: Text(
            'Welcome, Nikky',
            style: QwiyiTypography.normalPrimaryTextStyle(context)
                .copyWith(fontSize: 24.sp),
          ),
        ),
      ),
      body: Consumer<HomeFeatureProvider>(builder: (context, getIt, child){
        return SafeArea(
          child: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: Column(
          children: [
            addVerticalSp(14.sp),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: screenAwareSize(18.sp, context),
                  horizontal: screenAwareSize(28.sp, context, width: true)),
              child: Container(
                width: screenWidth(context),
                height: screenAwareSize(190.sp, context),
                decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: kBColor.withOpacity(0.2),
                      width: 3.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: kBColor.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 10),
                      )
                    ]),
                child: Stack(
                  children: [
                    Center(
                      child: getIt.toggleIcon ? Text(
                       '${currency(context).currencySymbol}100,000.00',
                        style: QwiyiTypography.bigPrimaryTextStyle(context)
                            .copyWith(
                                color: kBColor,
                                fontSize: 36.sp,
                                fontFamily: 'Roboto'),) 
                                : Text('****',
                             style: QwiyiTypography.bigPrimaryTextStyle(context)
                             .copyWith(color: kBColor,fontSize: 36.sp, fontFamily: 'Roboto'),
                           )
                    ),
                    Positioned(
                        left: screenAwareSize(265.sp, context, width: true),
                        top: screenAwareSize(135.sp, context),
                        right: screenAwareSize(15.sp, context, width: true),
                        bottom: screenAwareSize(25.sp, context),
                        child:  IconButton(
                          onPressed: (){
                          getIt.toggleBal();
                          },
                          icon: Icon( getIt.toggleIcon ? _obscureText1 : _obscureText2,
                          color: kBColor),
                        ))
                  ],
                ),
              ),
            ),
            addVerticalSp(20.sp),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 46.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SecondaryButton(
                        press: () {
                          NavigatorRoute.navigateToRoute(AddMoney());
                        },
                        text: 'Add money',
                        radius: 10.sp,
                        width: screenAwareSize(127.sp, context, width: true),
                        textSize: 15.sp),
                    SecondaryButton(
                        press: () {
                          NavigatorRoute.navigateToRoute(WithdrawView());
                        },
                        text: 'Withdraw',
                        radius: 10.sp,
                        width: screenAwareSize(127.sp, context, width: true),
                        textSize: 15.sp)
                  ],
                )),
            addVerticalSp(52.sp),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 36.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     const HomeFeature(
                      label: 'Send Money'),
                    HomeFeature(
                      label: 'Generate Qr \nCode', 
                    child: Image.asset(
                        'asset/images/qwiyi_qr_code.png',
                        height: screenAwareSize(36.sp, context),
                        width: screenAwareSize(36.sp, context,
                        width: true),
                        color: secondaryColor,
                                  ),
                     onTap: ()=> NavigatorRoute.navigateToRoute(GenerateQR())
                                  ),
                  ],
                )),
            addVerticalSp(31.sp),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 36.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     HomeFeature(
                      label: 'Receive Money',
                       onTap: ()=> NavigatorRoute.navigateToRoute(ReceiveMoneyView())
                      ),
                    HomeFeature(
                      label: 'Notifcation',
                      bgColor: secondaryColor.withOpacity(0.43),
                      textColor: primaryColor,
                      child: Icon(Icons.notifications,
                            color: kBColor.withOpacity(0.7))
                      ),
                  ],
                )),
          ],
        ),
      ));
      })
      
    );
  }
}



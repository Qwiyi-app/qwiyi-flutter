
           
 import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/share/appbar/app_bar.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';

class RQRView extends StatelessWidget {

  const RQRView({required this.qr, super.key});
  final  String qr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: QwiyiAppBar(
        lColor: kBColor,
        onClick: () => Navigator.pop(context),
        lIcon: Icons.arrow_back_ios
      ),
      body: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
        width: screenWidth(context),
        height: screenHeight(context),
        child: Column(
         children: [
            UIHelper.verticalSpaceLarge,
            UIHelper.verticalSpaceMedium,
           Container(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
             decoration: BoxDecoration(
               border: Border.all(color: primaryColor)
             ),
             child: BarcodeWidget(
              height: 220.h,
              data: qr.trim(),
             barcode: Barcode.qrCode()
             ),
           ),
           UIHelper.verticalSpaceLarge,
           UIHelper.verticalSpaceLarge,
          Text('Hold phone up while they scan.', 
          style: QwiyiTypography.normalTextStyle(context)
          .copyWith(color: primaryColor, fontSize: 18.sp),)
         ],
        ),
      ),
    );
  }
}
        
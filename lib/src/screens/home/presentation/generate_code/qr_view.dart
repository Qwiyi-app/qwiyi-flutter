
  import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/generate_code/generate_code_view.dart';
import 'package:qwiyi_flutter/src/share/appbar/app_bar.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/button/brand_button.dart';

class QRView extends StatelessWidget {
   const QRView({required this.acctName, super.key});

  final String acctName;

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
           BarcodeWidget(
            height: 220.h,
            data: acctName.trim(),
           barcode: Barcode.qrCode()
           ),
           UIHelper.verticalSpaceLarge,
           UIHelper.verticalSpaceLarge,
           QwiyiButton(
             width: screenWidth(context),
            onClick: (){},
           label: 'Request QR Banner')
         ],
        ),
      ),
    );
  }
}

// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';

class USSDScreen extends StatelessWidget {
  const USSDScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              addVerticalSp(20.sp),
              Image.asset('asset/images/ussd icon.png'),
              addVerticalSp(10.sp),
              Text(
                '*555*440*465586905#',
                style: QwiyiTypography.normalPrimaryTextStyle(context).copyWith(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
              addVerticalSp(72.sp),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "'Click here to dial code'",
                    style: QwiyiTypography.normalPrimaryTextStyle(context)
                        .copyWith(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF413A27).withOpacity(0.61),
                    ),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}

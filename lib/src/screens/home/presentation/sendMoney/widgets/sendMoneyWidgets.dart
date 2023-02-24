// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
    required this.text,
    required this.buttonText1,
    required this.buttonText2,
    required this.press1,
    required this.press2,
  });

  final String text, buttonText1, buttonText2;
  final GestureTapCallback press1, press2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenAwareSize(510.sp, context),
      padding: EdgeInsets.symmetric(
        horizontal: 44.sp,
        vertical: 44.sp,
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.sp),
          topRight: Radius.circular(20.sp),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: QwiyiTypography.normalSecondaryTextStyle(context).copyWith(
              fontSize: 24.sp,
              fontWeight: FontWeight.w800,
              color: backgroundColor,
            ),
          ),
          addVerticalSp(44.sp),
          InkWell(
            onTap: press1,
            child: Container(
              height: screenAwareSize(53.sp, context),
              width: screenAwareSize(280.sp, context, width: true),
              decoration: BoxDecoration(
                  color: secondaryColor.withOpacity(0.43),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10.sp))),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 25.sp,
                  top: 5.sp,
                ),
                child: Text(
                  buttonText1,
                  style: QwiyiTypography.normalSecondaryTextStyle(context)
                      .copyWith(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800,
                    color: backgroundColor,
                  ),
                ),
              ),
            ),
          ),
          addVerticalSp(44.sp),
          InkWell(
            onTap: press2,
            child: Container(
              height: screenAwareSize(53.sp, context),
              width: screenAwareSize(280.sp, context, width: true),
              decoration: BoxDecoration(
                  color: secondaryColor.withOpacity(0.43),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10.sp))),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 25.sp,
                  top: 5.sp,
                ),
                child: Text(
                  buttonText2,
                  style: QwiyiTypography.normalSecondaryTextStyle(context)
                      .copyWith(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800,
                    color: backgroundColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

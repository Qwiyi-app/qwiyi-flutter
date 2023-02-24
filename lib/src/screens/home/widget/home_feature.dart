import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';

class HomeFeature extends StatelessWidget {
  final String label;
  final Widget? child;
  final Color? bgColor;
  final Color? textColor;
  final Function()? onTap;
  const HomeFeature({
    super.key,
    required this.label,
    this.child,
    this.bgColor,
    this.textColor,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.fromLTRB(10.sp, 5.sp, 10.sp, 10.sp),
          height: screenAwareSize(115.sp, context),
          width: screenAwareSize(142.sp, context, width: true),
          decoration: BoxDecoration(
            color: bgColor ?? primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(alignment: Alignment.topRight, child: child),
                Text(
                  label,
                  style: QwiyiTypography.normalSecondaryTextStyle(context)
                      .copyWith(
                          fontSize: 16.sp,
                          color: textColor ?? Colors.white,
                          fontWeight: FontWeight.w700),
                )
              ])),
    );
  }
}

// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/auth/createpin/presentation/view/createpin.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/brand_buttons.dart';
import '../../../../../share/styling.dart';

class ViewAccountDetailsScreen extends StatefulWidget {
  const ViewAccountDetailsScreen({super.key});

  @override
  State<ViewAccountDetailsScreen> createState() =>
      _ViewAccountDetailsScreenState();
}

class _ViewAccountDetailsScreenState extends State<ViewAccountDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
          child: SizedBox(
              height: screenHeight(context),
              width: screenWidth(context),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        'Save Account Details',
                        style: QwiyiTypography.bigPrimaryTextStyle(context)
                            .copyWith(fontSize: 32.sp),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: screenAwareSize(135, context),
                      color: primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 42, vertical: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name:',
                                  style: QwiyiTypography
                                          .normalSecondaryTextStyle(context)
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'Bank:',
                                  style: QwiyiTypography
                                          .normalSecondaryTextStyle(context)
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'Account Number:',
                                  style: QwiyiTypography
                                          .normalSecondaryTextStyle(context)
                                      .copyWith(fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'John Doe',
                                  style: QwiyiTypography
                                          .normalSecondaryTextStyle(context)
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'Chrome Bank',
                                  style: QwiyiTypography
                                          .normalSecondaryTextStyle(context)
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  '12345 6879 98',
                                  style: QwiyiTypography
                                          .normalSecondaryTextStyle(context)
                                      .copyWith(fontWeight: FontWeight.w700),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: SecondaryButton(
                          press: () {},
                          text: "Add new",
                          width: 130.sp,
                          textSize: 16.sp),
                    ),
                    Center(
                      child: PrimaryButton(
                          press: () {
                            navigateToRoute(context, const CreatePinScreen());
                          },
                          text: 'Continue',
                          width: 220.sp,
                          textSize: 16.sp),
                    )
                  ],
                ),
              ))),
    );
  }
}

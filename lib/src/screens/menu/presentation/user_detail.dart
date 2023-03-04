import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/menu/presentation/add&remove_account/add_account.dart';
import 'package:qwiyi_flutter/src/share/bottomNavBar/customNavBar.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    String firstLetter = 'John \nDoe';
    int selectedIndex = 2;
    return Scaffold(
      body: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: Column(
          children: [
            UIHelper.verticalSpaceLarge,
            UIHelper.verticalSpaceLarge,
            Row(
              children: [
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 35.w, vertical: 50.h),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100)),
                        color: primaryColor),
                    child: Text(
                      firstLetter.substring(0, 1).toUpperCase(),
                      style: QwiyiTypography.bigTextStyle(context).copyWith(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 50.sp),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: Text(
                    firstLetter,
                    style: QwiyiTypography.bigTextStyle(context).copyWith(
                        fontWeight: FontWeight.w900,
                        color: primaryColor,
                        fontSize: 32.sp),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20),
              child: Column(
                children: [
                  const Divider(
                    color: kBColor,
                    thickness: 1,
                  ),
                  MenuOption(
                    label: 'Edit Profile',
                    onTap: () {},
                  ),
                  MenuOption(
                    label: 'Add or Remove Account',
                    onTap: () =>
                        NavigatorRoute.navigateToRoute(const AddAccountView()),
                  ),
                  MenuOption(
                    label: 'Security',
                    onTap: () {},
                  ),
                  MenuOption(
                    label: 'Rate us',
                    onTap: () {},
                  ),
                  MenuOption(
                    label: 'Log out',
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(
        selectedIndex: selectedIndex,
      ),
    );
  }
}

class MenuOption extends StatelessWidget {
  const MenuOption({super.key, required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: screenWidth(context),
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
          margin: EdgeInsets.symmetric(vertical: 3.h),
          decoration: BoxDecoration(
              color: secondaryColor, borderRadius: BorderRadius.circular(20)),
          child: Text(
            label,
            style: QwiyiTypography.bigTextStyle(context).copyWith(
                color: primaryColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w900),
          )),
    );
  }
}

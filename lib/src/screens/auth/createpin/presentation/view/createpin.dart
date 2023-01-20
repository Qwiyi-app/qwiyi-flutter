import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/home_screen/view/homeScreen.dart';
import 'package:qwiyi_flutter/src/screens/navbar/nav_bar.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/widget/brand_buttons.dart';
import '../../../../../share/color.dart';
import '../../../../../share/styling.dart';
import '../../../../../share/ui_helper.dart';
import '../../../../../widget/errors.dart';

class CreatePinScreen extends StatefulWidget {
  const CreatePinScreen({super.key});

  @override
  State<CreatePinScreen> createState() => _CreatePinScreenState();
}

class _CreatePinScreenState extends State<CreatePinScreen> {
  final formkey = GlobalKey<FormState>();
  late int newPin;
  late int confirmPin;
  final List<String> errors = [];

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: true,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
          child: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Create Account Pin',
                style: QwiyiTypography.bigPrimaryTextStyle(context)
                    .copyWith(fontSize: 32.sp),
              ),
              Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New Pin',
                        style: QwiyiTypography.normalPrimaryTextStyle(context)
                            .copyWith(fontSize: 14),
                      ),
                      addVerticalSp(10),
                      buildNewPinField(),
                      addVerticalSp(18),
                      Text(
                        'Confirm Pin',
                        style: QwiyiTypography.normalPrimaryTextStyle(context)
                            .copyWith(fontSize: 14),
                      ),
                      addVerticalSp(10),
                      buildConfirmPinField(),
                      addVerticalSp(20),
                      FormError(errors: errors)
                    ],
                  )),
              Center(
                child: SecondaryButton(
                    radius: 20.sp,
                    press: () {
                      NavigatorRoute.navigateAndRemoveUntilRoute(const CustomBottomNav());
                    },
                    text: 'Create',
                    width: 220.sp,
                    textSize: 20.sp),
              )
            ],
          ),
        ),
      )),
    );
  }

  TextFormField buildNewPinField() {
    return TextFormField(
        onSaved: (newValue) => newPin = newValue! as int,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(bankNameNullError)) {
            setState(() {
              errors.remove(bankNameNullError);
            });
          }
          newPin = value as int;
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(bankNameNullError)) {
            setState(() {
              errors.add(bankNameNullError);
            });
            return "";
          }

          return null;
        },
        keyboardType: TextInputType.number,
        decoration: textFieldDecoration('1234'));
  }

  TextFormField buildConfirmPinField() {
    return TextFormField(
        onSaved: (newValue) => confirmPin = newValue! as int,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(accNumNullError)) {
            setState(() {
              errors.remove(accNumNullError);
            });
          }
          confirmPin = value as int;
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(accNumNullError)) {
            setState(() {
              errors.add(accNumNullError);
            });
            return "";
          }

          return null;
        },
        keyboardType: TextInputType.number,
        decoration: textFieldDecoration('1234'));
  }
}

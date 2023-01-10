import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/brand_buttons.dart';
import '../../../../../widget/errors.dart';

class SaveAccountScreen extends StatefulWidget {
  const SaveAccountScreen({super.key});

  @override
  State<SaveAccountScreen> createState() => _SaveAccountScreenState();
}

class _SaveAccountScreenState extends State<SaveAccountScreen> {
  final formkey = GlobalKey<FormState>();
  late String bankName;
  late String accountNumber;
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
      body: SafeArea(
          child: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Save Account Details',
                style: bigPrimaryTextStyle(context).copyWith(fontSize: 32.sp),
              ),
              Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bank Name',
                        style: normalPrimaryTextStyle(context),
                      ),
                      addVerticalSp(10),
                      buildBankNameField(),
                      addVerticalSp(18),
                      Text(
                        'Account Number',
                        style: normalPrimaryTextStyle(context),
                      ),
                      addVerticalSp(10),
                      buildAccNumField(),
                      addVerticalSp(20),
                      FormError(errors: errors)
                    ],
                  )),
              Center(
                child: PrimaryButton(
                    press: () {}, text: 'Save', width: 220.sp, textSize: 16.sp),
              )
            ],
          ),
        ),
      )),
    );
  }

  TextFormField buildBankNameField() {
    return TextFormField(
        onSaved: (newValue) => bankName = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(bankNameNullError)) {
            setState(() {
              errors.remove(bankNameNullError);
            });
          }
          bankName = value;
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
        keyboardType: TextInputType.text,
        decoration: textFieldDecoration('Enter your bank name'));
  }

  TextFormField buildAccNumField() {
    return TextFormField(
        onSaved: (newValue) => accountNumber = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(accNumNullError)) {
            setState(() {
              errors.remove(accNumNullError);
            });
          }
          accountNumber = value;
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
        decoration: textFieldDecoration('Enter your Account Number'));
  }
}

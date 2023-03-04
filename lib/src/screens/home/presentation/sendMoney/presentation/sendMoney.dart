// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/sendMoney/presentation/enterOTPPinScreen.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/sendMoney/presentation/ussdScreen.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/sendMoney/widgets/sendMoneyWidgets.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';
import 'package:qwiyi_flutter/src/widget/brand_buttons.dart';
import 'package:qwiyi_flutter/src/widget/errors.dart';

class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({super.key});

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  final formkey = GlobalKey<FormState>();
  late String amount;
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
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          automaticallyImplyLeading: true,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: SizedBox(
            height: screenHeight(context),
            width: screenWidth(context),
            child: Padding(
              padding: EdgeInsets.only(bottom: 60.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: secondaryColor.withOpacity(0.43),
                    width: double.infinity,
                    height: screenAwareSize(150.sp, context),
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 12.sp,
                          horizontal: 54.sp,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                width: screenAwareSize(100.sp, context,
                                    width: true),
                                height: screenAwareSize(100.sp, context),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: Border(
                                      top: BorderSide(color: primaryColor),
                                      left: BorderSide.none,
                                      right: BorderSide(color: primaryColor),
                                      bottom: BorderSide(color: primaryColor),
                                    )),
                                child: Image.asset(
                                  'asset/images/qwiyi_qr_code.png',
                                  width: screenAwareSize(72.sp, context,
                                      width: true),
                                  height: screenAwareSize(72.sp, context),
                                  color: Colors.black,
                                )),
                            Text(
                              'Fast & \nSecure \nPayment.',
                              style: QwiyiTypography.normalPrimaryTextStyle(
                                      context)
                                  .copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 18.sp,
                              ),
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.sp),
                    child: Form(
                      key: formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Amount',
                            style:
                                QwiyiTypography.normalPrimaryTextStyle(context)
                                    .copyWith(fontSize: 14.sp),
                          ),
                          addVerticalSp(10.sp),
                          buildAmountField(),
                          addVerticalSp(10.sp),
                          Text(
                            'Bank Name',
                            style:
                                QwiyiTypography.normalPrimaryTextStyle(context)
                                    .copyWith(fontSize: 14.sp),
                          ),
                          addVerticalSp(10.sp),
                          buildBankNameField(),
                          addVerticalSp(10.sp),
                          Text(
                            'Account Number',
                            style:
                                QwiyiTypography.normalPrimaryTextStyle(context)
                                    .copyWith(fontSize: 14.sp),
                          ),
                          addVerticalSp(10.sp),
                          buildAccNumField(),
                          addVerticalSp(26.sp),
                          FormError(errors: errors),
                        ],
                      ),
                    ),
                  ),
                  SecondaryButton(
                    press: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        elevation: 0.0,
                        context: context,
                        builder: (context) {
                          return CustomBottomSheet(
                            press1: () {
                              NavigatorRoute.navigateToRoute(
                                const EnterOTPPinScreen(),
                              );
                            },
                            press2: () {
                              NavigatorRoute.navigateToRoute(
                                const USSDScreen(),
                              );
                            },
                            text: 'How would you \nlike to pay?',
                            buttonText1: 'Qwiyi Wallet',
                            buttonText2: 'Ussd',
                          );
                        },
                      );
                    },
                    text: 'Send Money',
                    radius: 20.sp,
                    width: 220.sp,
                    textSize: 20.sp,
                  )
                ],
              ),
            )));
  }

  TextFormField buildAmountField() {
    return TextFormField(
        onSaved: (newValue) => amount = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(amountNullError)) {
            setState(() {
              errors.remove(amountNullError);
            });
          }
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(amountNullError)) {
            setState(() {
              errors.add(amountNullError);
            });
            return "";
          }
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        decoration: textFieldDecoration('4000', true));
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
        decoration: textFieldDecoration('Access Bank', false));
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
        decoration: textFieldDecoration('1234 5678 910', false));
  }
}

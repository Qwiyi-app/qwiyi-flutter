import 'package:flutter/material.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9,]+@[a-zA-Z]+\.[a-zA-Z]+");
const String emailNullError = "Please enter your email address";
const String invalidEmailError = "Please enter a valid email";
const String passNullError = "Please enter your password";
const String incorrectPassError = "Password is incorrect";
const String shortPassError = "Password is too short";
const String passMatchError = "Password's does not match";
const String nameNullError = "Please enter your name";
const String phoneNumberNullError = "Please enter your phone number";
const String bankNameNullError = "Please enter your Bank Name";
const String accNumNullError = "Please enter your Account Number";
const String pinNullError = "Please enter your pin";
const String incorrectPinError = "Pin is incorrect";
const String pinMatchError = "Pin's does not match";

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            errors.length, (index) => formErrorText(context, errors[index])));
  }

  Row formErrorText(BuildContext context, String error) {
    return Row(
      children: [
        Icon(
          Icons.error_outline,
          color: Colors.red,
          size: screenAwareSize(12, context),
        ),
        addVerticalSp(5),
        Text(
          error,
          style: QwiyiTypography.normalPrimaryTextStyle(context).copyWith(color: Colors.red),
        )
      ],
    );
  }
}

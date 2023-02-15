import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/auth/saveaccount/presentation/view/saveAccountView.dart';
import 'package:qwiyi_flutter/src/screens/auth/signin/presentation/view/signinview.dart';
import '../../../../../share/color.dart';
import '../../../../../widget/errors.dart';
import '../../../../../share/function.dart';
import '../../../../../share/styling.dart';
import '../../../../../share/ui_helper.dart';
import '../../../../../widget/brand_buttons.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formkey = GlobalKey<FormState>();
  late String email;
  late String password;
  late String name;
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
        centerTitle: true,
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: true,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios)),
        elevation: 0,
        title: Text(
          'Sign Up',
          style: QwiyiTypography.bigPrimaryTextStyle(context)
              .copyWith(fontSize: 36.sp),
        ),
      ),
      body: SafeArea(
          child: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: QwiyiTypography.normalPrimaryTextStyle(context)
                            .copyWith(fontSize: 14.sp),
                      ),
                      addVerticalSp(10),
                      buildNameField(),
                      addVerticalSp(18),
                      Text(
                        'Email',
                        style: QwiyiTypography.normalPrimaryTextStyle(context)
                            .copyWith(fontSize: 14.sp),
                      ),
                      addVerticalSp(10),
                      buildEmailField(),
                      addVerticalSp(18),
                      Text(
                        'Password',
                        style: QwiyiTypography.normalPrimaryTextStyle(context)
                            .copyWith(fontSize: 14.sp),
                      ),
                      addVerticalSp(10),
                      buildPasswordField(),
                      addVerticalSp(20),
                      FormError(errors: errors)
                    ],
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PrimaryButton(
                      press: () {
                        NavigatorRoute.navigateAndReplaceRoute(
                            const SaveAccountScreen());
                      },
                      text: 'Sign Up',
                      width: 150,
                      textSize: 18.sp),
                  addVerticalSp(16),
                  Text(
                    "Already have an account?",
                    style: QwiyiTypography.normalPrimaryTextStyle(context)
                        .copyWith(fontSize: 14.sp),
                  ),
                  addVerticalSp(9),
                  InkWell(
                    onTap: () {
                      NavigatorRoute.navigateToRoute( const SignInScreen());
                    },
                    child: Text(
                      "Sign In for Qwiyi",
                      style: QwiyiTypography.normalPrimaryTextStyle(context)
                          .copyWith(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
        onSaved: (newValue) => email = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(emailNullError)) {
            setState(() {
              errors.remove(emailNullError);
            });
          } else if (emailValidatorRegExp.hasMatch(value) &&
              errors.contains(invalidEmailError)) {
            setState(() {
              errors.remove(invalidEmailError);
            });
          }
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(emailNullError)) {
            setState(() {
              errors.add(emailNullError);
            });
            return "";
          } else if (!emailValidatorRegExp.hasMatch(value) &&
              !errors.contains(invalidEmailError)) {
            setState(() {
              errors.add(invalidEmailError);
            });
            return "";
          }
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        decoration: textFieldDecoration('Johndoe@mail.com'));
  }

  TextFormField buildPasswordField() {
    return TextFormField(
        onSaved: (newValue) => password = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty) {
            setState(() {
              removeError(error: passNullError);
            });
          }
          password = value;
        },
        validator: (value) {
          if (value!.isEmpty) {
            setState(() {
              addError(error: passNullError);
            });
            return "";
          }
          return null;
        },
        obscureText: true,
        keyboardType: TextInputType.text,
        decoration: textFieldDecoration('Pick a strong password'));
  }

  TextFormField buildNameField() {
    return TextFormField(
        onSaved: (newValue) => name = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty) {
            setState(() {
              removeError(error: nameNullError);
            });
          }
          name = value;
        },
        validator: (value) {
          if (value!.isEmpty) {
            setState(() {
              addError(error: nameNullError);
            });
            return "";
          }
          return null;
        },
        keyboardType: TextInputType.text,
        decoration: textFieldDecoration('John Doe'));
  }
}

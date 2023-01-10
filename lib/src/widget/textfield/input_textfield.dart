
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';


class QwiyiTextField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? label;
  final Function()? onTap;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Function? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? textEditingController;
  final TextInputFormatter? formatter;
  final bool? isEnabled;
  final int? maxLength;
  const QwiyiTextField({
    Key? key,
    required this.label,
    this.prefixIcon,
    this.maxLength,
    this.onTap,
    this.suffixIcon,
    this.hintText,
    this.keyboardType,
    this.obscureText,
    this.onChanged,
    this.formatter,
    this.validator,
    this.textEditingController,
    this.isEnabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label!,
          style: QwiyiTypography.normalTextStyle(context).copyWith(
              fontSize: screenAwareSize(22, context)),
        ),
        SizedBox(height: 7.h),
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            maxLengthEnforcement: MaxLengthEnforcement.none,
            enabled: isEnabled,
          
            onTap: onTap,
            controller: textEditingController!,
            cursorColor: primaryColor,
            cursorWidth: 0.7,
          
            keyboardType: keyboardType,
            obscureText: obscureText ?? false,
            onChanged: (text) {
              if (onChanged != null) onChanged!(text);
            },
            validator: validator,
            inputFormatters: [
              formatter ?? FilteringTextInputFormatter.singleLineFormatter
            ],
            // style: QwiyiTypography.normalTextStyle(context).copyWith(fontSize: 15.sp).copyWith(color: primaryColor),
            decoration: InputDecoration(
              fillColor: Colors.grey.withOpacity(0.1),
              filled: true,
                hintText: hintText,
                contentPadding: const EdgeInsets.only(
                  left: 15.0,
                  top: 19.0,
                ),
                suffixIcon: suffixIcon,
                disabledBorder: const OutlineInputBorder(
                  //  borderSide: BorderSide(width: 0.8),
                    borderRadius:
                         BorderRadius.all(Radius.circular(10.0))),
                border: const OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.transparent, width: 0.8),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                focusedBorder: const OutlineInputBorder(
                    borderRadius:
                         BorderRadius.all(Radius.circular(10.0))),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent, width: 0.8),
                    borderRadius:
                         BorderRadius.all(Radius.circular(10.0)))),
          ),
        )
      ],
    );
  }
}

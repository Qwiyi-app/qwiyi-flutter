

import 'package:flutter/material.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';


// class QwiyiButton extends StatelessWidget {
//   final VoidCallback onClick;
//   final String label;
//   final double? width;
//   final double? height;
//   final Color? textColor;
//   final Color background;
//   final Function? onTap;
//   const QwiyiButton(
//       {Key? key,
//       required this.onClick,
//       required this.label,
//       this.width,
//       this.height,
//       this.background = primaryColorFunction,
//       this.textColor,
//       this.onTap})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: screenAwareSize(80, context),
//       width: width,
//       child: MaterialButton(
//           height: screenAwareSize(50, context),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           color: primaryColor,
//           onPressed: onClick,
//           child: Center(
//             child: Text(label,
//                 style: QwiyiTypography.normalTextStyle(context).copyWith(
//                   color: textColor ?? Colors.white,
//                   fontSize: screenAwareSize(28, context),
//                 )),
//           )),
//     );
//   }
// }




class QwiyiButton extends StatelessWidget {
  final VoidCallback onClick;
  final String label;
  final double? width;
  final double? height;
  final Color? textColor;
  final Color? background;
  final Color? borderColor;
  final Function? onTap;
  final AlignmentGeometry? alignment;
  const QwiyiButton({
    Key? key,
    required this.onClick,
    required this.label,
    this.width,
    this.height,
    this.background,
    this.textColor, 
    this.borderColor,
    this.onTap,
    this.alignment
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Center(
        child: Container(
          width: width ?? screenWidth(context) / 1.9,
          height: height ?? screenAwareSize(75, context),
          decoration: BoxDecoration(
            color: background ?? primaryColorFunction,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor ?? primaryColorFunction)
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
            child: Center(
              child: Align(
                alignment: alignment ?? Alignment.center,
                child: Text(label,
                    style: QwiyiTypography.normalTextStyle(context).copyWith(
                      color: textColor ?? Colors.white,
                      fontSize: screenAwareSize(28, context),
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


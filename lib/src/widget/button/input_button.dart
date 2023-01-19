

import 'package:flutter/material.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';

class QwiyiInputButton extends StatelessWidget {
 
  final String hintText;
  final String label;
   final VoidCallback onTap;

    const QwiyiInputButton({super.key, required this.onTap, required this.hintText, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
          label,
          style: QwiyiTypography.normalTextStyle(context).copyWith(
              fontSize: screenAwareSize(22, context), color: primaryColor),
        ),
        UIHelper.verticalSpaceSmall,
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            child: ListTile(
              leading: Text(hintText, style: QwiyiTypography.normalTextStyle(context).copyWith(
              fontSize: screenAwareSize(20, context), color: primaryColor),
        ),
              trailing: const Icon(Icons.keyboard_arrow_down_sharp)
            ),
          ),
        )
        ],
      );
    
  }
}
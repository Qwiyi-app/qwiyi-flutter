
import 'package:flutter/material.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';

class QwiyiAppBar extends StatelessWidget implements PreferredSizeWidget {

    final Function()? onClick;
    final Function()? onTap;
    final IconData? lIcon;
    final IconData? rIcon;
    final Color? lColor;
    final Color?  rColor;
    final String? title;
    const QwiyiAppBar({super.key,  this.onClick, this.onTap,  this.lIcon, this.rIcon, this.lColor, this.rColor, this.title});
    
   @override
  Size get preferredSize => const Size.fromHeight(40);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: Text(title ?? '', 
      style: QwiyiTypography.bigTextStyle(context)
      .copyWith(fontWeight: FontWeight.w900, color: primaryColor),),
      leading:  IconButton(
        onPressed: onClick,
        icon: Icon(lIcon, color: lColor,) ),
        actions: [
         Padding(
           padding: const EdgeInsets.only(right: 15.0, top: 10),
           child: IconButton(
        onPressed: onTap,
        icon: Icon(rIcon, color: rColor,) ),
         ),
       
        ],
        
    );
  }
}
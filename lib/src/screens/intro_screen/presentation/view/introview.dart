
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';

class IntroView extends StatelessWidget{
const IntroView({super.key});


   @override
   Widget build(BuildContext context){
     return Scaffold(
       body: Center(child: Text(
         'Intro View',
         style: normalTextStyle(context).copyWith(fontSize: 12.sp))),
     );
   }
}


 import 'package:flutter/cupertino.dart';

class MenuFeatureProvider extends ChangeNotifier{


  bool isChecked = false;
         toggle(){
       isChecked =! isChecked;
       notifyListeners();
            }
 }
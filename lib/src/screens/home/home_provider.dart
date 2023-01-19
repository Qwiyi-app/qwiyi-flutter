

import 'package:flutter/cupertino.dart';

class HomeFeatureProvider extends ChangeNotifier{
  
  // Generate QR code
  String controller = '';
  generateQR(dynamic val){
      if(val.isEmpty){
       } else{
     controller = val;
      }
      notifyListeners();
    }

    // Generate QR code for receiving
     String receiveController = '';
     receiveQR(dynamic value){
      if(value.isEmpty){
       } else{
     receiveController = value;
      }
      notifyListeners();
    }
 }
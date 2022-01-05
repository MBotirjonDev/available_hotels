import 'package:bookinghotel/core/components/const_value.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  static bool theme = true;

  void changeTheme(){
    theme = false;
    Types.valueoftheme = true;
    notifyListeners();
  }
  void returnTheme(){
    theme = true;
    Types.valueoftheme = false;
    notifyListeners();
  }
}
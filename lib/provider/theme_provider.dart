import 'package:flutter/material.dart';
import 'package:spotify_clone/theme.dart';
import 'package:spotify_clone/utils.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData getTheme(){
    if(sharedPreferences.sharedPreferences.getBool("isDark")??true){
      return darkMode;
    }
    return lightMode;
  }
  void toggleTheme(){
    sharedPreferences.sharedPreferences.setBool("isDark", !(sharedPreferences.sharedPreferences.getBool("isDark")??true));
    notifyListeners();
  }
}
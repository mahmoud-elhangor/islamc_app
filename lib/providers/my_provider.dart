import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
  String language="en";
  ThemeMode themeMode=ThemeMode.light;
  void changeLanguage(String languageCode){
    language=languageCode;
    notifyListeners();
  }
  void changeTheme(ThemeMode mode){
    themeMode=mode;
    notifyListeners();
  }
  String getBackground(){
    if(themeMode==ThemeMode.light){
      return "assets/images/background.png";
    }
    return "assets/images/dark_bg.png";
  }
}
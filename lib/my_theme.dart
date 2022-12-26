import 'package:flutter/material.dart';

class MyThemeData {
  static const Color colorBlack = Color.fromRGBO(36, 36, 36, 1.0);
  static const Color colorGold = Color.fromRGBO(183, 147, 95, 1.0);
  static const Color primaryDarkColor = Color.fromRGBO(15, 20, 36, 1.0);
  static const Color onPrimaryDarkColor = Color.fromRGBO(250, 204, 29, 1.0);
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme(
        primary:colorGold ,
        onPrimary:colorBlack  ,
      error:Colors.redAccent ,
      onError:Colors.white ,
      secondary:Colors.brown ,
      onSecondary: Colors.white ,
      background:Colors.transparent ,
      onBackground:colorBlack ,
      surface: colorGold,
      onSurface:Colors.white ,
      brightness: Brightness.light,),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: colorBlack),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    ),
    textTheme: const TextTheme(
        headline1: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: colorBlack)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: colorGold,
      unselectedItemColor: Colors.white,
      selectedItemColor: colorBlack,
    ),
  );
  static ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme(
  primary:primaryDarkColor ,
  onPrimary:onPrimaryDarkColor  ,
  error:Colors.redAccent ,
  onError:Colors.white ,
  secondary:primaryDarkColor ,
  onSecondary: onPrimaryDarkColor ,
  background:Colors.transparent ,
  onBackground:onPrimaryDarkColor ,
  surface: primaryDarkColor,
  onSurface:onPrimaryDarkColor ,
  brightness: Brightness.dark,),
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.white),
  backgroundColor: Colors.transparent,
  elevation: 0.0,
  ),
  textTheme: const TextTheme(
  headline1: TextStyle(
  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
  subtitle1:  TextStyle(
  fontSize: 30,color:onPrimaryDarkColor)
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  backgroundColor: primaryDarkColor,
  unselectedItemColor: Colors.white,
  selectedItemColor: onPrimaryDarkColor,
  ),);
}

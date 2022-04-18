import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xffB7935F);
  static Color darkPrimary = Color(0xff141A2E);
  static Color darkAccent = Color(0xffFACC1D);
  static Color colorBlack = Color(0xff242424);
  static Color colorWhite = Color(0xffFFFFFF);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimary,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: lightPrimary,
          onPrimary: darkPrimary,
          secondary: colorBlack,
          onSecondary: colorWhite,
          error: Colors.red,
          onError: Colors.red,
          background: colorWhite,
          onBackground: lightPrimary,
          surface: Colors.white,
          onSurface: Colors.black),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: colorBlack,
          )),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          color: colorBlack,
          fontWeight: FontWeight.w700,
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          color: colorBlack,
          fontWeight: FontWeight.w400,
        ),
        headline6: TextStyle(
            fontSize: 30, color: colorBlack, fontWeight: FontWeight.bold),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: colorBlack,
        unselectedItemColor: Colors.white,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colorWhite,
      ));
  static final ThemeData darkTheme = ThemeData(
      primaryColor: darkPrimary,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: darkPrimary,
          onPrimary: colorWhite,
          secondary: darkAccent,
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.red,
          background: darkPrimary,
          onBackground: darkAccent,
          surface: Colors.white,
          onSurface: Colors.black),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: darkAccent,
          )),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          color: colorWhite,
          fontWeight: FontWeight.w700,
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          color: colorWhite,
          fontWeight: FontWeight.w400,
        ),
        headline6: TextStyle(
            fontSize: 30, color: colorWhite, fontWeight: FontWeight.bold),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: darkAccent,
        unselectedItemColor: Colors.white,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkPrimary,
      ));
}

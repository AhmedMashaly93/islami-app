import 'package:flutter/material.dart';

class MythemeData{
static const Color Primary=Color(0XFFB7935F);
  static ThemeData Lighttheme=ThemeData(
      textTheme: TextTheme(
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.transparent),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
          backgroundColor: MythemeData.Primary,
          selectedItemColor: Colors.black, unselectedItemColor: Colors.white));
  static ThemeData Darktheme=ThemeData(
      textTheme: TextTheme(
      ));
}
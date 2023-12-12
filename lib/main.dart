import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Sura-Details.dart';
import 'package:islami_app/homescreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: HomeScreen.routeName,
    routes: {HomeScreen.routeName: (context) => HomeScreen(),
    SuraDetails.routeName: (context) => SuraDetails()},
    theme: ThemeData(
        textTheme: TextTheme(
        ),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.black),
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Colors.transparent),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.black, unselectedItemColor: Colors.white)),
  ));
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Sura-Details.dart';
import 'package:islami_app/homescreen.dart';
import 'package:islami_app/tabs/hadeethdetails.dart';
import 'package:islami_app/theme%20data.dart';

void main() {runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: HomeScreen.routeName,
  routes: {HomeScreen.routeName: (context) => HomeScreen(),
    SuraDetails.routeName: (context) => SuraDetails(),
    HadeethDetails.routename: (context) => HadeethDetails(),
  },
  theme: MythemeData.Lighttheme,
  darkTheme: MythemeData.Darktheme,
));

}

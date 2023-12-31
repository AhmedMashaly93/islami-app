
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Sura-Details.dart';
import 'package:islami_app/homescreen.dart';
import 'package:islami_app/providers/my-provider.dart';
import 'package:islami_app/tabs/hadeethdetails.dart';
import 'package:islami_app/theme%20data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(ChangeNotifierProvider(
    create: (context) =>
      MYProvider(),
      child: const MYApp()));
     }


    class MYApp extends StatelessWidget {
  const MYApp({super.key});

  @override
  Widget build(BuildContext context) {
  var provider=Provider.of<MYProvider>(context);

  return MaterialApp(
  title: 'Localizations Sample App',
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  locale: Locale(provider.local),
  debugShowCheckedModeBanner: false,
  initialRoute: HomeScreen.routeName,
  routes: {HomeScreen.routeName: (context) => HomeScreen(),
  SuraDetails.routeName: (context) => SuraDetails(),
  HadeethDetails.routename: (context) => HadeethDetails(),
  },
  theme: MythemeData.Lighttheme,
  darkTheme: MythemeData.Darktheme,
  );

  }
  }


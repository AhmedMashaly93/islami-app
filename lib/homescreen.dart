import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/tabs/Radio.dart';
import 'package:islami_app/tabs/Quran.dart';
import 'package:islami_app/tabs/ahadeethTab.dart';
import 'package:islami_app/tabs/Sebha.dart';
import 'package:islami_app/tabs/Settings.dart';
import 'package:islami_app/theme%20data.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset("assets/images/background.png",
          width: double.infinity, fit: BoxFit.fill),
      Scaffold(
        appBar: AppBar(
          title: Text(
            "إسلامي",
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: MythemeData.Primary,
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/al quran.png")),
                label: "Quran",
                backgroundColor: MythemeData.Primary),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: "Sebha", backgroundColor: MythemeData.Primary),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: "Radio", backgroundColor: MythemeData.Primary),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label: "Ahadeth",
                backgroundColor: MythemeData.Primary),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "SETTINGSS",
                backgroundColor: MythemeData.Primary),
          ],
        ),
      body:tabs[index], ),
    ]);
  }
  List<Widget>tabs=[QuranTab(),SebhaTab(),RadioTab(),AhadeethTab(),SettingsTab()];
}

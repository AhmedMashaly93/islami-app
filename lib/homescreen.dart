import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/tabs/Ahadeth.dart';
import 'package:islami_app/tabs/Quran.dart';
import 'package:islami_app/tabs/Radio.dart';
import 'package:islami_app/tabs/Sebha.dart';
import 'package:islami_app/tabs/Settings.dart';

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
          backgroundColor: Colors.blueAccent,
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label: "Quran",
                backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: "Sebha", backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: "Radio", backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/al quran.png")),
                label: "Ahadeth",
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "SETTINGS",
                backgroundColor: Colors.transparent),
          ],
        ),
      body:tabs[index], ),
    ]);
  }
  List<Widget>tabs=[QuranTab(),SebhaTab(),AhadeethTab(),RadioTab(),SettingsTab()];
}

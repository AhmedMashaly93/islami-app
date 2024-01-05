import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
  static const String routename = "SebhaTab";

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> tesbih = ["سبحان الله", "الحمد لله", "الله أكبر"];
  int numSebha = 0;
  int count = 1;
  String nameSebha = "سبحان الله";

  @override
  Widget build(BuildContext context) {
    ////CALL(name, timer);
    return Column(
      children: [
        Center(
            child: Image.asset(
          "assets/images/Group 7.png",
          width: 200,
        )),
        Text(
          "عدد التسبيحات",
          style: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.w100, color: Colors.black),
        ),
        Stack(children: [
          Image.asset(
            "assets/images/Rectangle 3.png",
            width: 100,
          ),
          Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: InkWell(onTap: () {
              addTesbih(count);
            },child:

            Text('$numSebha',style: TextStyle(fontSize: 40),)),
          ))
        ]),
        Stack(children: [
          Image.asset(
            "assets/images/R4.png",
            width: 100,
          ),
          Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: Text(nameSebha),
          ))
        ]),
      ],
    );
  }

  void addTesbih(index) {
    numSebha++;
    if (numSebha == 33) {
      nameSebha = tesbih[index];
      numSebha = 0;
      count++;
    }
    if (nameSebha == 'الله أكبر') {
      count = 0;
    }
    setState(() {});
  }
}

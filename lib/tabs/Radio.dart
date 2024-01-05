import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTab extends StatelessWidget {
  static const String routeName = "RadioTab";

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 100,
      ),
      Center(
          child: Image.asset(
        "assets/images/Radioo.png",
        width: 300,
      )),
      Text(
        "إذاعة القرآن الكريم",
        style: GoogleFonts.elMessiri(
            fontSize: 20, fontWeight: FontWeight.w100, color: Colors.black),
      ),
      SizedBox(height: 50,),
      Image.asset("assets/images/Group 5.png")
    ]);
  }
}

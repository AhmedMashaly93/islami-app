import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/tabs/hadeethModel.dart';

class AhadeethTab extends StatefulWidget {
  static const String routeName = "AhadeethTab()";

  @override
  State<AhadeethTab> createState() => _AhadeethTabState();
}

class _AhadeethTabState extends State<AhadeethTab> {
  List<HadeethModel> ALLAHADEETH = [];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/ahadeth_image.png"),
          Divider(
            thickness: 3,
          ),
          Text(
            "الأحاديث",
            style: GoogleFonts.aboreto(
                fontSize: 30, fontWeight: FontWeight.w100, color: Colors.black),
          ),
          Divider(
            thickness: 3,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (BuildContext context, int index) {
                return Text(ALLAHADEETH[index].title);

              },itemCount: ALLAHADEETH.length,
            ),
          )
        ],
      ),
    );
  }

  Loadhadeeth() async {
    String ahadeeth = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadeethList = ahadeeth.split("#");
    for (int i = 0; i < hadeethList.length; i++) {
      String hadeethone = hadeethList[i];
      List<String> hadeethonelines = hadeethone.trim().split("\n");
      String hadeethTitle = hadeethonelines[0];
      hadeethonelines.removeAt(0);
      List<String> hadeethbody = hadeethonelines;
      HadeethModel Ahadeth = HadeethModel(hadeethTitle, hadeethbody);
      ALLAHADEETH.add(Ahadeth);

    }
    setState(() {});
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/tabs/hadeethModel.dart';
import 'package:islami_app/theme%20data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'hadeethdetails.dart';

class AhadeethTab extends StatefulWidget {
  static const String routeName = "AhadeethTab";

  @override
  State<AhadeethTab> createState() => _AhadeethTabState();
}

class _AhadeethTabState extends State<AhadeethTab> {
  List<HadeethModel> ALLAHADEETH = [];

  @override
  Widget build(BuildContext context) {
    Loadhadeeth();
    return Scaffold(body: Center(
      child: Column(
        children: [
          Image.asset("assets/images/ahadeth_image.png"),
          Divider(
            color: MythemeData.Primary,
            thickness: 2,
          ),
          Text(
            AppLocalizations.of(context)!.ahadeeth,
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Divider(
            color: MythemeData.Primary,
            thickness: 2,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  Divider(indent: 50, endIndent: 50, thickness: 1,color: MythemeData.Primary),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HadeethDetails.routename,
                          arguments: ALLAHADEETH[index]);
                    },
                    child: Center(child: Text(ALLAHADEETH[index].title)));
              },
              itemCount: ALLAHADEETH.length,
            ),
          )
        ]),
    )


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

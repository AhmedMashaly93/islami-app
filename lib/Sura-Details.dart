import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/suraModel.dart';
import 'package:islami_app/theme%20data.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadfile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
              title: Text(
            args.Suraname,
            style: TextStyle(color: Colors.black),
          )),
          body: Card(
            elevation: 14,
            margin: EdgeInsets.all(18),
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  const Divider(thickness: 1,endIndent: 40,indent: 40,color:MythemeData.Primary ),
              itemBuilder: (context, index) {
                return Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    "${verses[index]}(${index+1})",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                );
              },
              itemCount: verses.length,
            ),
          )),
    );
  }

  loadfile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("/n");
    verses = lines;
    setState(() {});
  }
}

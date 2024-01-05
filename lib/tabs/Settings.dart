import 'package:flutter/material.dart';
import 'package:islami_app/theme%20data.dart';

import '../bottomsheets/show-lan-bottomsheet.dart';
import '../theme data.dart';
import '../theme data.dart';
import '../theme data.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("Languages"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: InkWell(
              onTap: () {
                ShowLangBottomsheet(context);
              },
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: MythemeData.Primary)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("English"),
                ),
              ),
            ),
          ),
          SizedBox(height: 18),
          Text("Mode"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: InkWell(
              onTap: () {
                ShowTHEMBottomsheet();
              },
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: MythemeData.Primary)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Light"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void ShowLangBottomsheet(context) {
    showModalBottomSheet(
      context: context,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(18), topLeft: Radius.circular(18))),
      builder: (context) {
        return LanguageBottomSheet();
      }

        ) ;
  }

  void ShowTHEMBottomsheet() {
    showModalBottomSheet(
      context: context,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(18), topLeft: Radius.circular(18))),
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * .7,
        );
      },
    );
  }
}

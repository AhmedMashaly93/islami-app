import 'package:flutter/material.dart';
import 'package:islami_app/theme%20data.dart';
import 'package:provider/provider.dart';

import '../providers/my-provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MYProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                provider.local == "en"?Icon(Icons.done):SizedBox.shrink(),
                Text(
                  AppLocalizations.of(context)!.english,
                  style: TextStyle(
                      color: provider.local == "en"
                          ? MythemeData.Primary
                          : Colors.black),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                provider.local == "ar"
                    ? Icon(Icons.done, color: Colors.transparent)
                    : SizedBox.shrink(),
                Text(
                  AppLocalizations.of(context)!.arabic,
                  style: TextStyle(
                      color: provider.local == "ar"
                          ? MythemeData.Primary
                          : Colors.black),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

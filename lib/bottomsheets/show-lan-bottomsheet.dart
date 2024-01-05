import 'package:flutter/material.dart';
import 'package:islami_app/theme%20data.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ Icon(Icons.done),Text("ENGLISH",style: TextStyle(color: MythemeData.Primary),)],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ Icon(Icons.done,color: Colors.transparent),Text("ARABIC",style: TextStyle(color: Colors.black),)],
          )
        ],
      ),
    );
  }
}

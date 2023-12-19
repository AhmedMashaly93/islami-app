import 'package:flutter/material.dart';
import 'package:islami_app/tabs/hadeethModel.dart';

class HadeethDetails extends StatelessWidget {
static const String routename="HadeethDetails";

  @override
  Widget build(BuildContext context) {
    var args= ModalRoute.of(context)?.settings.arguments as HadeethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
              title: Text(
                textAlign: TextAlign.center,
                args.title,
                style: TextStyle(color: Colors.black,),
              )),
          body: Card(
            elevation: 14,
            margin: EdgeInsets.all(18),
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
            child: ListView.separated(
              separatorBuilder: (context, index) =>
              const Divider(thickness: 1,endIndent: 40,indent: 40),
              itemBuilder: (context, index) {
                return Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    args.body[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                );
              },
              itemCount: args.body.length,
            ),
          )),
    );
  }
}

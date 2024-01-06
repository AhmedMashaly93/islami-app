import 'package:flutter/cupertino.dart';

class MYProvider extends ChangeNotifier{
  String local="en";
  changeLanguage(String langcode){
    local=langcode;
    notifyListeners();
  }
}
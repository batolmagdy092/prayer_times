import 'package:flutter/cupertino.dart';
import '../Models/Prayer_model.dart';
import '../Services/prayer_service.dart';

class Prayer_Provider with ChangeNotifier
{
  Prayer_model?getdata;



  Future<void> fetchprayer() async{
    getdata = await Prayer_service.fetchprayertime();
    notifyListeners();
  }
}
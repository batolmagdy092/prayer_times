import 'package:dio/dio.dart';
import 'package:prayer_times/Models/Prayer_model.dart';
import '../Models/Prayer_model.dart';

class Prayer_service {
  static final Dio dio = dio;

  static Future <Prayer_model> fetchprayertime() async
  {
    try {
      Response response = await dio.get("http://api.aladhan.com/v1/timingsByCity?city=Giza&country=Egypt");
      return Prayer_model.fromjson(response.data);
    }
    catch (e) {
      throw Exception('Error fetching prayer $e ');
    }
  }
}
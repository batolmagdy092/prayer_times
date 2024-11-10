import 'package:dio/dio.dart';
import 'package:prayer_times/Models/Prayer_model.dart';
import '../Models/Prayer_model.dart';

class Prayer_service {
  static final Dio dio = dio;

  static Future <Prayer_model> fetchprayertime() async
  {
    try {
      Response response = await dio.get(' http://api.aladhan.com/v1/timingsByCity?city=Giza&country=Egypt');

      if(response.statusCode == 200 )
        {
          return Prayer_model.fromjson(response.data);
        }
      else{
        throw Exception('Failed to load prayer times');
      }
    }
    catch (e) {
      print('Error: $e');
      throw Exception('Error fetching prayer $e ');
    }
  }
}
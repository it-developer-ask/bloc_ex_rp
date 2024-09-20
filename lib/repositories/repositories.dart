import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';

class Repositories {
  static late Dio _dio;
  static void initialize() {
    try {
      _dio = Dio();
    } catch (e) {
      debugPrint("Unable to initialize DIO : $e");
    }
  }

  static void callEntriesApi() async {
    final response = await _dio.get('https://api.publicapis.org/entries');
    print(response);
  }

}

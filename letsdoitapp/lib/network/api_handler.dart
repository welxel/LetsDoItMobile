import 'package:dio/dio.dart';

class ApiHandler {
  static Future apiGet(
      {required String url, required Map<String, dynamic> parameter}) async {
    var dio = Dio();

    Response response = await dio.get(url);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return response.statusCode.toString();
    }
  }

  static Future<Map<String, dynamic>> apiPost(
      {required String url, required Map<String, dynamic> parameter}) async {
    var dio = Dio();

    try {
      Response response = await dio.post(url, data: parameter);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        return {"statusCode": response.statusCode.toString()};
      }
    } catch (e) {
      print("${e.toString()}");
      return {"exception" : e.toString()};

    }

  }
}
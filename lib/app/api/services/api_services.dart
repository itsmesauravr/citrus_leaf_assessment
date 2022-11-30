import 'dart:convert';
import 'dart:developer';
import 'package:citrus_leaf_assessment/app/api/model/app_model.dart';
import 'package:dio/dio.dart';

class ApiServices {
  static Future<ApiCall?> apiResponse() async {
    Dio dio = Dio();

    try {
      Response response =
          await dio.get("https://api.coindesk.com/v1/bpi/currentprice.json");
      // log(response.statusCode.toString());
      // print(response.data.runtimeType);
      // log(jsonDecode(response.data).toString());
      if (response.statusCode == 200) {
        return ApiCall.fromJson(json.decode(response.data));
      }
    } on DioError catch (e) {
      log(e.toString());
    }
    return null;
  }
}

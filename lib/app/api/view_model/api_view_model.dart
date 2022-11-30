import 'dart:developer';

import 'package:citrus_leaf_assessment/app/api/model/app_model.dart';
import 'package:citrus_leaf_assessment/app/api/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiViewModel extends ChangeNotifier {
  void onTap(context) async {
    ApiCall? getResponse = await ApiServices.apiResponse();
    if (getResponse != null) {
      log(getResponse.toString());
      storeResponse(getResponse);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Something went wrong"),
        ),
      );
    }
  }

  void storeResponse(getResponse) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("response", getResponse.toJson().toString());
    prefs.getString("response").toString();
    log(prefs.getString("response").toString());
  }
}

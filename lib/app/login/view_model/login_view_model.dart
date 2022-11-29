import 'dart:developer';
import 'package:citrus_leaf_assessment/app/home/view/home_page.dart';
import 'package:citrus_leaf_assessment/app/login/view/widgets/snack_bar.dart';
import 'package:citrus_leaf_assessment/app/utils/app_color.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  bool isHidden = true;
  void formValid(context) {
    if (formKey.currentState!.validate()) {
      log("message: form is valid");
    } else {
      log("message:form is not valid");
      SnackBarWidget.show(
        context,
        "Please enter valid email and password",
        Colors.red,
      );
    }
    notifyListeners();
  }

  void togglePasswordView() {
    isHidden = !isHidden;
    notifyListeners();
  }

  void loginFunction(context) {
    final email = emailEditingController.text.trim();
    final password = passwordEditingController.text.trim();
    log(email.toString());
    log(password.toString());

    if (email == "itscitrusleaf@gmail.com" && password == "Citrus@123") {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
          (route) => false);
    } else {
      SnackBarWidget.show(
        context,
        "Email and Password doesnot match",
        AppColor.kRedColor,
      );
    }
    notifyListeners();
  }
}

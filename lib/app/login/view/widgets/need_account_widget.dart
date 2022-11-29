import 'package:citrus_leaf_assessment/app/login/view/widgets/login_text_widget.dart';
import 'package:citrus_leaf_assessment/app/utils/app_color.dart';
import 'package:flutter/material.dart';

class NeedAccountWidget extends StatelessWidget {
  const NeedAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const LoginTextWidget(
          title: "Need an account?",
          size: 16,
          fontWeight: FontWeight.w500,
          color: AppColor.kGreyColor,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "SIGN UP",
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: AppColor.kGreyColor,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:citrus_leaf_assessment/app/utils/app_color.dart';
import 'package:citrus_leaf_assessment/app/utils/app_size.dart';
import 'package:flutter/material.dart';

class LoginTextWidget extends StatelessWidget {
  const LoginTextWidget({
    super.key,
    required this.title,
    required this.size,
    required this.fontWeight,
    this.color,
  });

  final String title;
  final double size;
  final Color? color;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppSize.kWidth5,
        Text(
          title,
          style: TextStyle(
            fontSize: size,
            fontWeight: fontWeight,
            color: color ?? AppColor.kBlackColor,
          ),
        ),
      ],
    );
  }
}

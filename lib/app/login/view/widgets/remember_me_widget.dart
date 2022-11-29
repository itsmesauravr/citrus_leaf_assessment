import 'package:citrus_leaf_assessment/app/login/view/widgets/login_text_widget.dart';
import 'package:citrus_leaf_assessment/app/utils/app_color.dart';
import 'package:citrus_leaf_assessment/app/utils/app_size.dart';
import 'package:flutter/material.dart';

class RememberMeWidget extends StatelessWidget {
  const RememberMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppSize.kWidth5,
        Container(
          decoration: BoxDecoration(
            color: AppColor.kPinkColor,
            borderRadius: BorderRadius.circular(2),
          ),
          child: const Icon(
            Icons.check,
            color: Colors.white,
          ),
        ),
        const LoginTextWidget(
          title: "Remember me?",
          size: 16,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}

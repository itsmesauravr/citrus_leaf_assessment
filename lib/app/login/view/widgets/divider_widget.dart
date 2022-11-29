import 'package:citrus_leaf_assessment/app/utils/app_color.dart';
import 'package:citrus_leaf_assessment/app/utils/app_size.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        AppSize.kWidth5,
        SizedBox(
          width: width * .4,
          child: const Divider(
            thickness: 2,
          ),
        ),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.kGrey300,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              "OR",
              style: TextStyle(
                color: AppColor.kGreyColor,
              ),
            ),
          ),
        ),
        SizedBox(
          width: width * .4,
          child: const Divider(
            thickness: 2,
          ),
        ),
      ],
    );
  }
}

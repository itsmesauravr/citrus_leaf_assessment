import 'package:citrus_leaf_assessment/app/utils/app_color.dart';
import 'package:citrus_leaf_assessment/app/utils/app_size.dart';
import 'package:flutter/material.dart';

class TransferMoneyWidget extends StatelessWidget {
  const TransferMoneyWidget({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: AppColor.kdeepBlueColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        AppSize.kHeight5,
        Text(
          text,
          style: const TextStyle(
            color: AppColor.kGreyColor,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}



import 'package:citrus_leaf_assessment/app/utils/app_color.dart';
import 'package:citrus_leaf_assessment/app/utils/app_image.dart';
import 'package:citrus_leaf_assessment/app/utils/app_size.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 65,
      width: width,
      color: AppColor.kdeepBlueColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                AppSize.kWidth30,
                SizedBox(
                  height: 35,
                  child: AppImage.kAccountImage,
                ),
                AppSize.kWidth10,
                const SizedBox(
                  height: 30,
                  child: VerticalDivider(
                    thickness: 1,
                    color: AppColor.kGreyColor,
                  ),
                ),
                Chip(
                  backgroundColor: AppColor.kdeepBlueColor,
                  avatar: const CircleAvatar(
                    backgroundImage: AssetImage(
                      "assests/images/flag_icon.png",
                    ),
                  ),
                  label: const Text(
                    "Indore",
                    style: TextStyle(
                      color: AppColor.kWhiteColor,
                      fontSize: 8,
                    ),
                  ),
                  onDeleted: () {},
                  deleteIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: AppColor.kWhiteColor,
                    size: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  child: AppImage.kScannerImage,
                ),
                AppSize.kWidth20,
                SizedBox(
                  height: 25,
                  child: AppImage.kBellImage,
                ),
                AppSize.kWidth20,
                SizedBox(
                  height: 30,
                  child: AppImage.kQuestionImage,
                ),
                AppSize.kWidth30,
              ],
            ),
          )
        ],
      ),
    );
  }
}

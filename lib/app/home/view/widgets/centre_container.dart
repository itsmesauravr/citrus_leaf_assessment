import 'package:citrus_leaf_assessment/app/utils/app_color.dart';
import 'package:citrus_leaf_assessment/app/utils/app_size.dart';
import 'package:flutter/material.dart';

class CentreContainer extends StatelessWidget {
  const CentreContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                height: height * 0.085,
                width: width * 1 / 3.5,
                decoration: BoxDecoration(
                  color: AppColor.kBlueColor500,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assests/images/percentage_img.png",
                      width: 30,
                    ),
                    AppSize.kHeight2,
                    const Text(
                      "Offers",
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColor.kWhiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: height * 0.085,
            width: width * 1 / 3.5,
            decoration: BoxDecoration(
              color: AppColor.kBlueColor500,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assests/images/gift_img.png",
                  width: 30,
                ),
                AppSize.kHeight2,
                const Text(
                  "Rewards",
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColor.kWhiteColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height * 0.085,
            width: width * 1 / 3.5,
            decoration: BoxDecoration(
              color: AppColor.kBlueColor500,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assests/images/speaker_img.png",
                  width: 30,
                ),
                AppSize.kHeight2,
                const Text(
                  "Refer & Earn",
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColor.kWhiteColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

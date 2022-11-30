import 'package:citrus_leaf_assessment/app/home/model/home_model.dart';
import 'package:citrus_leaf_assessment/app/utils/app_color.dart';
import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      height: height * .17,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
      ),
      child: PageView.builder(
        controller: PageController(
          viewportFraction: 0.9,
          initialPage: 1,
        ),
        itemCount: appBannerList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(appBannerList[index].thumbnailUrl.toString()),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: DefaultTextStyle(
              style: const TextStyle(
                color: AppColor.kWhiteColor,
                fontSize: 20.0,
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:citrus_leaf_assessment/app/utils/app_color.dart';
import 'package:flutter/material.dart';

class SponsoredLink extends StatelessWidget {
  const SponsoredLink({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        height: height * .145,
        width: width * .9,
        decoration: BoxDecoration(
          color: AppColor.kGreyColor100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "sponsored Links",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assests/images/myntra.png",
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Myntra",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assests/images/flipkart.png",
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "FlipKart",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assests/images/Group40.png",
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "ixgo",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assests/images/ixigo.png",
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Myntra",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

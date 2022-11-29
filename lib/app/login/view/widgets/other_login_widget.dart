import 'package:flutter/material.dart';

class OtherLoginWidget extends StatelessWidget {
  const OtherLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assests/images/google_icon.png",
          height: 45,
          width: 45,
        ),
        Image.asset(
          "assests/images/facebook_icon.png",
          height: 70,
          width: 70,
        ),
        Image.asset(
          "assests/images/linkdIn_icon.png",
          height: 55,
          width: 50,
        )
      ],
    );
  }
}

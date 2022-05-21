import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:welcome_login_signup_page_flutter/constants.dart';

class SocalIcon extends StatelessWidget {
  const SocalIcon({
    Key? key,
    required this.iconSrc,
    required this.onTap,
  }) : super(key: key);

  final String iconSrc;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}

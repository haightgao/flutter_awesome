import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_login_signup_page_flutter/components/rounded_button.dart';
import 'package:welcome_login_signup_page_flutter/constants.dart';
import 'package:welcome_login_signup_page_flutter/screens/login/login_screen.dart';
import 'package:welcome_login_signup_page_flutter/screens/signup/signup_screen.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to edu".toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const LoginScreen()),
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const SignupScreen()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

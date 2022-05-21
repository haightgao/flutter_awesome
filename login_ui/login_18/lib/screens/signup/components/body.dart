import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_login_signup_page_flutter/components/already_have_an_account_check.dart';
import 'package:welcome_login_signup_page_flutter/components/rounded_button.dart';
import 'package:welcome_login_signup_page_flutter/components/rounded_input_field.dart';
import 'package:welcome_login_signup_page_flutter/components/rounded_password_field.dart';
import 'package:welcome_login_signup_page_flutter/components/social_icon.dart';
import 'package:welcome_login_signup_page_flutter/constants.dart';
import 'package:welcome_login_signup_page_flutter/screens/login/login_screen.dart';
import 'package:welcome_login_signup_page_flutter/screens/signup/components/or_divider.dart';

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
            const Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(text: "SIGNUP", press: () {}),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const LoginScreen()),
                  ),
                );
              },
            ),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  onTap: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  onTap: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  onTap: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

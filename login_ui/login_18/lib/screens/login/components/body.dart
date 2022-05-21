import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_login_signup_page_flutter/components/already_have_an_account_check.dart';
import 'package:welcome_login_signup_page_flutter/components/rounded_button.dart';
import 'package:welcome_login_signup_page_flutter/components/rounded_input_field.dart';
import 'package:welcome_login_signup_page_flutter/components/rounded_password_field.dart';
import 'package:welcome_login_signup_page_flutter/screens/signup/signup_screen.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(text: "LOGIN", press: () {}),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const SignupScreen()),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

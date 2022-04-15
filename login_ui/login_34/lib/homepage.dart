import 'package:circle_checkbox/redev_checkbox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _check = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 240,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.fill,
                colorFilter:
                    ColorFilter.mode(Color(0xff262628), BlendMode.hardLight),
              ),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 29),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 180),
                  // 头像
                  Center(
                    child: Container(
                      height: 103,
                      width: 103,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/Avatar.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  const SizedBox(height: 27),
                  // 用户名输入框
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffefefef),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffefefef),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffefefef),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffefefef),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      prefixIcon: const Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                      labelText: 'Full Name',
                      labelStyle: const TextStyle(
                        fontFamily: 'SFUIDisplay',
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff9b9b9b),
                      ),
                    ),
                    style: const TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff9b9b9b),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Email输入框
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffefefef),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffefefef),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffefefef),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffefefef),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Color(0xffd0d0d0),
                      ),
                      labelText: 'Email',
                      labelStyle: const TextStyle(
                        fontFamily: 'SFUIDisplay',
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff9b9b9b),
                      ),
                    ),
                    style: const TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff9b9b9b),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // 密码输入看
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffefefef),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffefefef),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffefefef),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffefefef),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                        fontFamily: 'SFUIDisplay',
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff9b9b9b),
                      ),
                    ),
                    style: const TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff9b9b9b),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 38),
                  // 复选框
                  Row(
                    children: [
                      CircleCheckbox(
                        value: _check,
                        onChanged: (value) {
                          setState(() {
                            _check = !_check;
                          });
                        },
                        activeColor: const Color(0xfff05522),
                      ),
                      const SizedBox(height: 10),
                      RichText(
                        text: const TextSpan(
                          text: "I agree to the",
                          style: TextStyle(
                            fontFamily: 'SFUIDisplay',
                            fontSize: 13,
                            color: Color(0xff9b9b9b),
                          ),
                          children: [
                            TextSpan(
                              text: ' Terms and Conditions',
                              style: TextStyle(
                                fontFamily: 'SFUIDisplay',
                                fontSize: 13,
                                color: Color(0xfff05522),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 42),
                  // 按钮
                  MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontFamily: "SFUIText",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    color: const Color(0xfff05522),
                    height: 50,
                    minWidth: double.infinity,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  const SizedBox(height: 28),
                  RichText(
                    text: const TextSpan(
                      text: "Already have an account?",
                      style: TextStyle(
                        fontFamily: 'SFUIDisplay',
                        fontSize: 13,
                        color: Color(0xff9b9b9b),
                      ),
                      children: [
                        TextSpan(
                          text: ' Sign in',
                          style: TextStyle(
                            fontFamily: 'SFUIDisplay',
                            fontSize: 13,
                            color: Color(0xfff05522),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            top: 40,
            left: 40,
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

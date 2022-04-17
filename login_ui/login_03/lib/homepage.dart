import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  bool? _checked = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.arrow_back),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 37),
                  // 标题
                  const Center(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontFamily: "SFUIText",
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 88),
                  //表单
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      color: Colors.black.withOpacity(0.6),
                      elevation: 0,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 75, left: 22, right: 22, bottom: 0),
                              child: Column(
                                children: [
                                  // 用户名文本框
                                  TextFormField(
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff9b9b9b),
                                    ),
                                    decoration: InputDecoration(
                                      fillColor: const Color(0xff2a2a2a),
                                      filled: true,
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.account_circle,
                                        color: Color(0xffd0d0d0),
                                      ),
                                      labelText: "Full Name",
                                      labelStyle: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff9b9b9b),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  // Email 文本框
                                  TextFormField(
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff9b9b9b),
                                    ),
                                    decoration: InputDecoration(
                                      fillColor: const Color(0xff2a2a2a),
                                      filled: true,
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.email,
                                        color: Color(0xffd0d0d0),
                                      ),
                                      labelText: "Email",
                                      labelStyle: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff9b9b9b),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  // 秘密文本框
                                  TextFormField(
                                    obscureText: true,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff9b9b9b),
                                    ),
                                    decoration: InputDecoration(
                                      fillColor: const Color(0xff2a2a2a),
                                      filled: true,
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.lock,
                                        color: Color(0xffd0d0d0),
                                      ),
                                      labelText: "Password",
                                      labelStyle: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff9b9b9b),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 35),
                                  // 复选框
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Checkbox(
                                        value: _checked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _checked = value;
                                          });
                                        },
                                        activeColor: const Color(0xfff05522),
                                        checkColor: Colors.white.withOpacity(0.6),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: "I agree to the",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xff9b9b9b),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: " Terms and conditions.",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xfff05522),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 40),
                                  // 登录按钮
                                  SizedBox(
                                    width: double.infinity,
                                    height: 50,
                                    child: MaterialButton(
                                        onPressed: () {},
                                        child: const Text(
                                          "SIGN UP",
                                          style: TextStyle(fontFamily: "SFUIText", fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                                        ),
                                        color: const Color(0xfff05522)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // 注册文字
                  RichText(
                    text: TextSpan(
                      text: "Already have an account? ",
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: "Sign in.",
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xfff05522),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // 头像
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 114),
                  child: CircleAvatar(
                    child: Image.asset('assets/Avatar.png'),
                    radius: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

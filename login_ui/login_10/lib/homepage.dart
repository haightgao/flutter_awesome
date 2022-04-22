import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage("assets/bg.png"),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.75), BlendMode.darken),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 92),
              const Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: "Avenir",
                    fontSize: 44,
                    color: Colors.white,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "If you dont't have an account please",
                  style: TextStyle(
                    fontFamily: "Avenir",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "create new account.",
                  style: TextStyle(
                    fontFamily: "Avenir",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 47),
                        const Text(
                          "Email",
                          style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffa6aebc),
                          ),
                        ),
                        TextFormField(
                          style: const TextStyle(
                            fontFamily: "LucidaGrande",
                            fontSize: 16,
                            color: Color(0xff0a1f44),
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            fillColor: const Color(0xfff1f2f4),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.transparent),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.transparent),
                            ),
                            hintText: "CodeDecoder@gmail.com",
                            hintStyle: const TextStyle(
                              fontFamily: "LucidaGrande",
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0a1f44),
                            ),
                          ),
                        ),
                        const SizedBox(height: 19),
                        const Text(
                          "Password",
                          style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffa6aebc),
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          style: const TextStyle(
                            fontFamily: "LucidaGrande",
                            fontSize: 16,
                            color: Color(0xff0a1f44),
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            fillColor: const Color(0xfff1f2f4),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.transparent),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.transparent),
                            ),
                            hintText: "password",
                            hintStyle: const TextStyle(
                              fontFamily: "LucidaGrande",
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0a1f44),
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "Forgot your password",
                              style: TextStyle(
                                fontFamily: "Avenir",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff0a1f44),
                              ),
                            ),
                            const SizedBox(height: 25),
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                    fontFamily: "LucidaGrande",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: const Color(0xff189ab4),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 32),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 48),
              RichText(
                text: const TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                    fontFamily: "Avenir",
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: "Sign up",
                      style: TextStyle(
                        fontFamily: "Avenir",
                        fontSize: 14,
                        color: Color(0xff189ab4),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

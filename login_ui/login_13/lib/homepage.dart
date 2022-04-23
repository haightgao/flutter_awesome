import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 103),
              Center(
                child: Container(
                  height: 107,
                  width: 107,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.white,
                        Color(0xffe5e5e5),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Center(
                    child: Text(
                      "C",
                      style: GoogleFonts.raleway(
                        fontSize: 72,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffd82032),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Code Decoders",
                  style: GoogleFonts.raleway(
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "Sign in to continue",
                  style: TextStyle(
                    fontFamily: "Avenir",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 56),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Label Text",
                                style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xffa6aebc),
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                style: const TextStyle(
                                  fontFamily: "Avenir",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffa6aebc),
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xffe1e4e8),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xffe1e4e8),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xffe1e4e8),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xffe1e4e8),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  hintText: "Your Email",
                                  hintStyle: const TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffa6aebc),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Label Text",
                                    style: TextStyle(
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xffa6aebc),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Forgot password?",
                                      style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xffd82032),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                style: const TextStyle(
                                  fontFamily: "Avenir",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffa6aebc),
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xffe1e4e8),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xffe1e4e8),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xffe1e4e8),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xffe1e4e8),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  hintText: "Your Password",
                                  hintStyle: const TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffa6aebc),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 25),
                              SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "SIGN IN",
                                    style: TextStyle(
                                      fontFamily: "Avenir",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: const Color(0xffd82032),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 11),
              const Center(
                child: Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(
                    fontFamily: "Avenir",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

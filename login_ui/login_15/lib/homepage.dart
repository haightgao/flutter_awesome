import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  bool password = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3e4050),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 87),
                  child: Container(
                    height: 174,
                    width: 174,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        width: 1,
                        color: const Color(0xffa4c3d0).withOpacity(0.15),
                      ),
                      borderRadius: BorderRadius.circular(174),
                    ),
                    child: Center(
                      child: Container(
                        height: 135,
                        width: 135,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            width: 1,
                            color: const Color(0xffa4c3d0).withOpacity(0.15),
                          ),
                          borderRadius: BorderRadius.circular(135),
                          image: const DecorationImage(
                            image: AssetImage("assets/profile.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 75),
                Text(
                  "Please login to continue",
                  style: GoogleFonts.montserrat(
                    fontSize: 13.59,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 27),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        style: GoogleFonts.montserrat(
                          fontSize: 13.59,
                          color: const Color(0xff7f8c99),
                        ),
                        decoration: InputDecoration(
                          hintText: "codedecoders@gmail.com",
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 13.59,
                            color: const Color(0xff7f8c99),
                          ),
                          prefixIcon: const Icon(
                            Icons.account_circle,
                            color: Color(0xff009b99),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.transparent),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.transparent),
                          ),
                          fillColor: const Color(0xff333443),
                          filled: true,
                        ),
                      ),
                      const SizedBox(height: 11),
                      TextFormField(
                        style: GoogleFonts.montserrat(
                          fontSize: 13.59,
                          color: const Color(0xff7f8c99),
                        ),
                        decoration: InputDecoration(
                          hintText: "******",
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 13.59,
                            color: const Color(0xff7f8c99),
                          ),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color(0xff009b99),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.transparent),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.transparent),
                          ),
                          fillColor: const Color(0xff333443),
                          filled: true,
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: password == false ? const Color(0xff009b99) : const Color(0xff7f8c99),
                            ),
                            onPressed: () {
                              setState(() {
                                password = !password;
                              });
                            },
                          ),
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            "SIGN IN",
                            style: GoogleFonts.montserrat(
                              fontSize: 11.78,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          color: const Color(0xff009b99),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.64),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: "Don't have an account? ",
                            style: GoogleFonts.montserrat(
                              fontSize: 11.78,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                            children: [
                              TextSpan(
                                  text: " Create one.",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 11.78,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff242643),
                                  )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

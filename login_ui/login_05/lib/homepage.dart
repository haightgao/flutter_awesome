import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const SizedBox(height: 75),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Code\nDecoders",
                  style: GoogleFonts.montserrat(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  "|",
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Text(
                  "Login UI",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 400),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 45,
                    width: 120,
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        "SIGN IN",
                        style: TextStyle(
                          fontFamily: "SFUITest",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      color: const Color(0xff061420),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    width: 120,
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        "SIGN UP",
                        style: TextStyle(
                          fontFamily: "SFUITest",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 17),
            const Center(
              child: Text(
                "By continuing,you agree to our Terms and",
                style: TextStyle(
                  fontFamily: "SFUITest",
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            const Center(
              child: Text(
                "Conditions",
                style: TextStyle(
                  fontFamily: "SFUITest",
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

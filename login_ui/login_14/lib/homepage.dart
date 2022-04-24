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
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            // 头部Banner图片
            ClipPath(
              clipper: BannerClipPath(),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 2.9 / 10,
                child: Image.asset("assets/bg.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120, left: 40, right: 40),
              // 中间圆角矩形
              child: Column(
                children: [
                  const SizedBox(height: 19),
                  Container(
                    height: 107,
                    width: 107,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffbec2ce),
                          offset: Offset(0, 10),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "C",
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold,
                          fontSize: 72,
                          color: const Color(0xff6133fe),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Code Decoders",
                    style: GoogleFonts.montserrat(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      wordSpacing: 2,
                      color: const Color(0xffa6aebc),
                    ),
                  ),
                  const SizedBox(height: 40),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffe1e4e8),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffe1e4e8),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffe1e4e8),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffe1e4e8),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: "Username",
                      labelStyle: GoogleFonts.raleway(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffa6aebc),
                      ),
                    ),
                    style: GoogleFonts.raleway(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffa6aebc),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffe1e4e8),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffe1e4e8),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffe1e4e8),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffe1e4e8),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: "Password",
                      labelStyle: GoogleFonts.raleway(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffa6aebc),
                      ),
                    ),
                    style: GoogleFonts.raleway(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffa6aebc),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      color: const Color(0xff6133fe),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  // 分隔线
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Expanded(
                          child: Divider(
                            color: Color(0xffefefef),
                            thickness: 1.2,
                          ),
                        ),
                        Text(
                          " OR ",
                          style: TextStyle(
                            fontFamily: "SFUIDisplay",
                            fontSize: 14,
                            backgroundColor: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color(0xffefefef),
                            thickness: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/fb.png"),
                      Image.asset("assets/Twitter.png"),
                      Image.asset("assets/G+.png"),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Center(
                    child: Text(
                      "Don't have an account?",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: const Color(0xff707070),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: const Color(0xff6133fe),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BannerClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
      ..lineTo(0, size.height - 100)
      // 底部曲线
      ..quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 100)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

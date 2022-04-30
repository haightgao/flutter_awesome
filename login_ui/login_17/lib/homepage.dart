import 'package:flutter/material.dar'
    't';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        /// 背景图片
        image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            /// logo
            child: Stack(
              children: [
                /// 使用剪切路径定义Logo图片背景
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 91),
                    child: ClipPath(
                      clipper: ClipPath1(),
                      child: Container(
                        height: 276,
                        width: 176,
                        color: const Color(0xff1bbfc6),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 83),

                    /// logo 图片
                    Center(
                      child: ClipPath(
                        clipper: ClipPath1(),
                        child: Container(
                          height: 276,
                          width: 176,
                          child: Image.asset(
                            'assets/profile.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 11),

                    // 文字 Welcome back
                    Text(
                      'Welcome back Kunal!',
                      style: GoogleFonts.montserrat(
                        fontSize: 13.59,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Please login to continue.',
                      style: GoogleFonts.montserrat(
                        fontSize: 13.59,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 39),
                    TextFormField(
                      style: GoogleFonts.montserrat(
                        fontSize: 13.59,
                        color: const Color(0xffe0e0e0),
                      ),
                      decoration: InputDecoration(
                        hintText: 'codedecoders@gmail.com',
                        hintStyle: GoogleFonts.montserrat(
                          fontSize: 13.59,
                          color: const Color(0xffe0e0e0),
                        ),
                        prefixIcon: const Icon(
                          Icons.account_circle,
                          color: Color(0xffe0e0e0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color(0xff1ab4f3),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color(0xff1ab4f3),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color(0xff1ab4f3),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color(0xff1ab4f3),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 11),
                    TextFormField(
                      obscureText: true,
                      style: GoogleFonts.montserrat(
                        fontSize: 13.59,
                        color: const Color(0xffe0e0e0),
                      ),
                      decoration: InputDecoration(
                        hintText: '******',
                        hintStyle: GoogleFonts.montserrat(
                          fontSize: 13.59,
                          color: const Color(0xffe0e0e0),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color(0xffe0e0e0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color(0xff1ab4f3),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color(0xff1ab4f3),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color(0xff1ab4f3),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color(0xff1ab4f3),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    /// sign in 按钮
                    SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'SIGN IN',
                          style: GoogleFonts.montserrat(
                            fontSize: 11.78,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        color: Color(0xff1bbfc6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Center(
                      child: RichText(
                        text: TextSpan(
                            text: 'Don\'t have an acount?',
                            style: GoogleFonts.montserrat(
                              fontSize: 11.78,
                              fontWeight: FontWeight.w600,
                              color: Colors.white70,
                            ),
                            children: [
                              TextSpan(
                                text: ' Create on.',
                                style: GoogleFonts.montserrat(
                                  fontSize: 11.78,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            ]),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// 定义剪切路径
class ClipPath1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // 1/3高度
    var oneThirdHeight = size.height / 3;

    final path = Path()
      ..lineTo(0, oneThirdHeight)
      ..lineTo(0, oneThirdHeight * 2)
      ..quadraticBezierTo(0, (oneThirdHeight * 2) + 37, 20, size.width + 57)
      ..lineTo(size.width / 2, size.height)
      ..quadraticBezierTo(size.width + 30, (oneThirdHeight * 2) + 37, size.width - 10, oneThirdHeight * 2)
      ..lineTo(size.width, (oneThirdHeight * 2) + 25)
      ..lineTo(size.width, oneThirdHeight - 20)
      ..quadraticBezierTo(size.width, oneThirdHeight - 35, size.height / 2 + 20, size.width / 2 - 40)
      ..lineTo(size.width / 2, 0)
      ..quadraticBezierTo(0, oneThirdHeight - 40, 0, oneThirdHeight - 30)
      ..lineTo(0, oneThirdHeight)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

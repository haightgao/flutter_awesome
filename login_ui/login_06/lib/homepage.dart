import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage("assets/background.png"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(const Color(0xff481f4d).withOpacity(0.1), BlendMode.color),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              child: ClipPath(
                clipper: ClipPath1(),
                child: Container(
                  // path填充的颜色
                  color: const Color(0xffc94b1a),
                ),
              ),
            ),
            Positioned(
              child: ClipPath(
                clipper: ClipPath2(),
                child: Container(
                  // path填充的颜色
                  color: const Color(0xffa13c15),
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    const SizedBox(height: 75),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 55,
                          height: 61,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/f.png"),
                              fit: BoxFit.fill,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff4b1f4d),
                                offset: Offset(14, -14),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 31),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Hello!",
                              style: TextStyle(
                                fontFamily: "SFUIText",
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Fashion gallery for you.",
                              style: TextStyle(
                                fontFamily: "SFUIText",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 360),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        elevation: 0,
                        color: const Color(0xffc94b1a),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: MaterialButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/Path.png"),
                            const SizedBox(width: 16),
                            const Text(
                              "Connect with Facebook",
                              style: TextStyle(
                                fontFamily: "SFUIText",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        elevation: 0,
                        color: const Color(0xff2672cb),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 17),
                    const Text(
                      "Don't have account? Sign up!",
                      style: TextStyle(
                        fontFamily: "SFUIText",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipPath1 extends CustomClipper<Path> {
  // 获取剪裁区域
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height - 224)
      ..lineTo(0, size.height - 300)
      ..close();

    return path;
  }

  // 是否重新剪裁。如果剪裁区域始终不会发生变化时应该返回false，这样就不会触发重新剪裁
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class ClipPath2 extends CustomClipper<Path> {
  // 获取剪裁区域
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height - 190)
      ..lineTo(0, size.height - 300)
      ..close();

    return path;
  }

  // 是否重新剪裁。如果剪裁区域始终不会发生变化时应该返回false，这样就不会触发重新剪裁
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

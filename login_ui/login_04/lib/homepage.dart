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
      // 带黑色滤镜的背景图
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('assets/bg.png'),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.4),
            BlendMode.darken,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // 内容区域 20内边距
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 68),
                  // 标题
                  Text(
                    "Welcome Back,\nKunal Jain!",
                    style: TextStyle(
                      fontFamily: "SFUIText",
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(height: 230),
                  Card(
                    elevation: 0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // 表单
                    child: Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            const SizedBox(height: 104),
                            // 密码输入框
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xfff5f9f6),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Colors.transparent),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Colors.transparent),
                                ),
                                hintText: "Please enter password",
                                hintStyle: const TextStyle(
                                  fontFamily: "SFUIText",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff696e72),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Center(
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  fontFamily: "SFUIText",
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1bbdc4),
                                ),
                              ),
                            ),
                            const SizedBox(height: 33),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  // 按钮区域
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // sign up 按钮
                        SizedBox(
                          height: 56,
                          width: 120,
                          child: MaterialButton(
                            onPressed: () {},
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                fontFamily: "SFUIText",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff293036),
                              ),
                            ),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        // sign in 按钮
                        SizedBox(
                          height: 56,
                          width: 120,
                          child: MaterialButton(
                            onPressed: () {},
                            child: const Text(
                              "Sign in",
                              style: TextStyle(
                                fontFamily: "SFUIText",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            color: const Color(0xff1bbdc4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
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
                  padding: const EdgeInsets.only(top: 290),
                  child: CircleAvatar(
                    child: Image.asset("assets/profile.png"),
                    radius: 80,
                    backgroundColor: Colors.transparent,
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

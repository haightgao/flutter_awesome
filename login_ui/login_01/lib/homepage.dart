import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // PageView 控制器
  final controller = PageController(viewportFraction: 0.8);

  List<String> image = [
    "assets/bg.png",
    "assets/bg1.png",
    "assets/bg2.png",
    "assets/bg3.png",
    "assets/bg4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 最外层容器，设置水平空白
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            // 水平滚动融洽
            Directionality(
              textDirection: TextDirection.ltr,
              child: SizedBox(
                height: 440,
                width: double.infinity,
                child: PageView(
                  controller: controller,
                  children: List.generate(
                    image.length,
                    (int index) => Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(image[index]),
                            fit: BoxFit.fitHeight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 29),
            const Center(
              child: Text(
                "Time is value.",
                style: TextStyle(
                  fontFamily: "SFUIText",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff293036),
                ),
              ),
            ),
            const SizedBox(height: 9),
            const Text(
              "Order online, don't wait in line.",
              style: TextStyle(
                fontFamily: "SFUIText",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff696e72),
              ),
            ),
            const Text(
              "Collect tokens,get free coffee.",
              style: TextStyle(
                fontFamily: "SFUIText",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff696e72),
              ),
            ),
            const SizedBox(height: 23),
            SmoothPageIndicator(
              controller: controller,
              count: image.length,
              effect: const ExpandingDotsEffect(
                expansionFactor: 4,
                activeDotColor: Color(0xff1bbdc4),
                dotColor: Color(0xffccccd0),
                dotHeight: 4,
                dotWidth: 4,
              ),
            ),
            const SizedBox(height: 49),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 56,
                  width: 120,
                  child: ElevatedButton(
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
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 56,
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        fontFamily: "SFUIText",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff293036),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff1bbdc4),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

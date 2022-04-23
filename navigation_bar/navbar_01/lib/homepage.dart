import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

const TextStyle _textStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
);

class _HomePageState extends State<HomePage> {
  // 当前页面索引
  int _currentIndex = 0;

  // 页面列表
  final List<Widget> _pages = [
    const Text("eco", style: _textStyle),
    const Text("home", style: _textStyle),
    const Text("person", style: _textStyle),
    const Text("video", style: _textStyle),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_currentIndex],
      ),
      // 导航栏
      // 可以不使用 NavigationBarTheme ，只单独使用 NavigationBar
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          // 指示器，作用于导航图标上
          indicatorColor: Colors.teal.withOpacity(0.2),
          // 作用与label上的样式
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.grey.withOpacity(0.2),
        ),
        child: NavigationBar(
          // 导航栏背景色 优先级大于 NavigationBarThemeData 中的 backgroundColor
          // backgroundColor: Colors.teal,
          // 动画时长
          animationDuration: const Duration(seconds: 1),
          // 是否显示label
          // alwaysHide 不显示label
          // alwaysShow 一直显示label
          // onlyShowSelected 只显示激活项的label
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          // 导航栏高度
          height: 60,
          // 当前选择项的索引
          selectedIndex: _currentIndex,
          // 选择项目后触发的事件
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          // 每个导航项目对应的内容，最少2个
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.eco_outlined),
              selectedIcon: Icon(Icons.eco),
              label: "eco",
            ),
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: "home",
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: "person",
            ),
            NavigationDestination(
              icon: Icon(Icons.video_camera_back_outlined),
              selectedIcon: Icon(Icons.video_camera_back),
              label: "video",
            ),
          ],
        ),
      ),
    );
  }
}

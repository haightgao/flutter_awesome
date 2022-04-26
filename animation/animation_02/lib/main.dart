import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

const primaryColor = Color(0xff0E185F);
const accentColor = Color(0xff2FA4FF);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter组件切换动画',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double width = 200;
  double height = 100;

  bool switchByClassFlag = false;
  bool switchByKeyFlag = false;
  bool switchByNull = false;
  bool switchTransitionFlag = false;

  /// 根据子组件类型生成动画效果
  Widget _switchByClass() {
    if (switchByClassFlag) {
      return Container(
        child: const Text(
          '根据类型切换组件',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      );
    } else {
      return Image.network('https://picsum.photos/200');
    }
  }

  /// 根据子组件 Key 生成动画效果
  Widget _switchByKey() {
    if (switchByKeyFlag) {
      return Image.network(
        'https://picsum.photos/id/1004/200/300',
        key: const ValueKey(1004),
      );
    } else {
      return Image.network(
        'https://picsum.photos/id/1005/200/300',
        key: const ValueKey(1005),
      );
    }
  }

  /// 渐隐渐显
  Widget? _switchByNull() {
    if (!switchByNull) {
      return Image.network(
        'https://picsum.photos/seed/picsum/200/300',
        key: const ValueKey(1004),
      );
    } else {
      return null;
    }
  }

  /// 自定义动画效果
  Widget _switchTransition() {
    if (switchTransitionFlag) {
      return Image.network(
        'https://picsum.photos/id/1004/200/300',
        key: UniqueKey(),
      );
    } else {
      return Image.network(
        'https://picsum.photos/id/1005/200/300',
        key: UniqueKey(),
      );
    }
  }

  /// 动画容器
  Widget _buildAnimatedSwitch({Widget? child, AnimatedSwitcherTransitionBuilder transitionBuilder = AnimatedSwitcher.defaultTransitionBuilder}) {
    return Container(
      color: primaryColor,
      height: 300,
      child: Center(
        child: AnimatedSwitcher(
          transitionBuilder: transitionBuilder,
          duration: const Duration(milliseconds: 500),
          child: child,
        ),
      ),
    );
  }

  // 按钮
  Widget _buildButton({String title = '切换组件', required VoidCallback onPress}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: accentColor,
        elevation: 0,
      ),
      onPressed: onPress,
      child: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter组件切换动画'),
        backgroundColor: primaryColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            _buildAnimatedSwitch(child: _switchByClass()),
            _buildButton(
              title: '根据组件类型判断是否是不同的组件',
              onPress: () {
                setState(() {
                  switchByClassFlag = !switchByClassFlag;
                });
              },
            ),
            const SizedBox(height: 10),
            _buildAnimatedSwitch(child: _switchByKey()),
            _buildButton(
              title: '根据组件Key判断是否是不同的组件',
              onPress: () {
                setState(() {
                  switchByKeyFlag = !switchByKeyFlag;
                });
              },
            ),
            const SizedBox(height: 10),
            _buildAnimatedSwitch(child: _switchByNull()),
            _buildButton(
              title: '渐隐渐显',
              onPress: () {
                setState(() {
                  switchByNull = !switchByNull;
                });
              },
            ),
            const SizedBox(height: 10),
            _buildAnimatedSwitch(
              child: _switchTransition(),
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: RotationTransition(
                    turns: animation,
                    child: child,
                  ),
                );
              },
            ),
            _buildButton(
              title: '自定义动画效果',
              onPress: () {
                setState(() {
                  switchTransitionFlag = !switchTransitionFlag;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

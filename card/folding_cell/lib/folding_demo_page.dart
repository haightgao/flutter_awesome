import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';

class FoldingDemoPage extends StatefulWidget {
  const FoldingDemoPage({Key? key}) : super(key: key);

  @override
  State<FoldingDemoPage> createState() => _FoldingDemoPageState();
}

class _FoldingDemoPageState extends State<FoldingDemoPage> with SingleTickerProviderStateMixin {
  /// 动画控制器
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('_controller.value = ${_controller.value}');

        /// 点击做展开或关闭动画
        if (_controller.value == 1) {
          _controller.reverse();
        } else {
          _controller.forward();
        }
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget? child) {
          return Container(
            color: Colors.black12,
            padding: const EdgeInsets.only(top: 44, left: 20, right: 20),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            centerText('1', Colors.red),

                            /// 最后的动画写在最前面
                            FoldingComponent(
                              backChild: Container(
                                color: Colors.teal,
                                child: const FlutterLogo(),
                              ),
                              animation: generateAnimation(
                                beginAngle: 90.0,
                                endAngle: 0.0,
                                intervalBegin: 0.6,
                                intervalEnd: 1.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: FoldingComponent(
                          frontChild: centerText('2', Colors.green),
                          animation: generateAnimation(
                            beginAngle: 0.0,
                            endAngle: 90.0,
                            intervalBegin: 0.3,
                            intervalEnd: 0.6,
                          ),
                        ),
                      ),
                      Expanded(
                        child: FoldingComponent(
                          frontChild: centerText('3', Colors.lightBlue),
                          animation: generateAnimation(
                            beginAngle: 0.0,
                            endAngle: 180.0,
                            intervalBegin: 0.0,
                            intervalEnd: 0.3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Animation<double> generateAnimation({
    /// 旋转的开始角度
    beginAngle: double,

    /// 旋转的结束角度

    endAngle: double,

    /// 改段动画的起点
    intervalBegin: double,

    /// 改段动画的结束
    intervalEnd: double,
  }) {
    return Tween<double>(
      begin: beginAngle,
      end: endAngle,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(
          intervalBegin,
          intervalEnd,
        ),
      ),
    );
  }

  /// 居中对齐文字
  Widget centerText(String text, Color backgroundColor) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

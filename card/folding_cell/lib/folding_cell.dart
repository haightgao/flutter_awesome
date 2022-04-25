import 'dart:math';

import 'package:flutter/material.dart';
import 'package:folding_cell/cell_content.dart';

enum FoldingState {
  open,
  close,
}

class FoldingCell extends StatefulWidget {
  /// 当卡片关闭或打开时的回调
  final ValueChanged<FoldingState> onChanged;

  /// 卡片的预设状态
  final FoldingState foldingState;

  const FoldingCell({
    Key? key,
    required this.onChanged,
    this.foldingState = FoldingState.close,
  }) : super(key: key);

  @override
  State<FoldingCell> createState() => _FoldingCellState();
}

class _FoldingCellState extends State<FoldingCell> with SingleTickerProviderStateMixin {
  /// 动画控制器
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 360),
    );

    if (widget.foldingState == FoldingState.close) {
      _controller.forward(from: 1.0);
    } else {
      _controller.reverse(from: 0);
    }

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.forward) {
        /// 执行了关闭动画
        widget.onChanged(FoldingState.close);
      }
      if (status == AnimationStatus.reverse) {
        /// 执行了打开动画
        widget.onChanged(FoldingState.open);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// 折叠或打开
  void toggle() {
    if (_controller.value == 1) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  /// 根据开始、结束角度 + 动画过程间隔生成 animation
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

  @override
  Widget build(BuildContext context) {
    double padding = 8.0;
    double cardHeight = 165.0;
    double totalHeight = 501.0;

    return GestureDetector(
      onTap: () {
        toggle();
      },
      child: AnimatedBuilder(
        /// 使用AnimatedBuilder是为了在 listView 中动态改变高度时做动画
        animation: _controller,
        builder: (BuildContext context, Widget? child) {
          return Container(
            padding: EdgeInsets.symmetric(
              horizontal: padding * 2,
              vertical: padding,
            ),

            /// 计算高度的原理：
            /// 开始时只显示卡片的一部分，后面随着动画过程增加 Cell 高度
            height: cardHeight + padding * 2 + (totalHeight - cardHeight) * (1.0 - _controller.value),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Container(
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(padding),

                                /// 底部圆角随动画改变
                                bottom: Radius.circular(8 * _controller.value),
                              ),
                              child: Container(
                                height: cardHeight,
                                child: component2(),
                              ),
                            ),
                            Container(
                              height: cardHeight,
                              child: FoldingComponent(
                                backChild: component1(),
                                animation: generateAnimation(
                                  beginAngle: 90.0,
                                  endAngle: 0.0,
                                  intervalBegin: 0.75,
                                  intervalEnd: 1.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 94,
                        child: FoldingComponent(
                          frontChild: component3(),
                          animation: generateAnimation(
                            beginAngle: 0.0,
                            endAngle: 90.0,
                            intervalBegin: 0.5,
                            intervalEnd: 0.75,
                          ),
                        ),
                      ),
                      Container(
                        height: 72,
                        child: FoldingComponent(
                          isFrontShowing: true,
                          frontChild: Container(
                            child: component4(),
                          ),
                          animation: generateAnimation(
                            beginAngle: 0.0,
                            endAngle: 180.0,
                            intervalBegin: 0.3,
                            intervalEnd: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        height: 72,
                        child: FoldingComponent(
                          isFrontShowing: true,
                          frontChild: Container(
                            child: component5(),
                          ),
                          animation: generateAnimation(
                            beginAngle: 0.0,
                            endAngle: 180.0,
                            intervalBegin: 0.2,
                            intervalEnd: 0.3,
                          ),
                        ),
                      ),
                      Container(
                        height: 86,
                        child: FoldingComponent(
                          isFrontShowing: true,
                          frontChild: Container(
                            child: component6(),
                          ),
                          animation: generateAnimation(
                            beginAngle: 0.0,
                            endAngle: 180.0,
                            intervalBegin: 0.0,
                            intervalEnd: 0.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class FoldingComponent extends AnimatedWidget {
  final Animation<double> animation;

  /// 每个组件有正反两面的 widget
  /// 正面的 widget
  late final Widget? frontChild;

  /// 背面的 widget
  late final Widget? backChild;

  /// 是否在展示正面的 widget
  final bool isFrontShowing;

  /// 180 度
  final double anglePI = 180.0;

  /// 90 度
  final double angleHalfPI = 90.0;

  /// 是否有背面的 widget
  bool get hasBackChild => backChild != null;

  FoldingComponent({
    required this.animation,
    this.frontChild,
    this.isFrontShowing = false,
    this.backChild,
  }) : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    /// 对齐方式
    Alignment alignment = hasBackChild ? Alignment.bottomCenter : Alignment.topCenter;

    /// 旋转角度
    double rotateAngle = (pi / anglePI) * (hasBackChild ? animation.value : -animation.value);

    /// 视图底部的圆角
    BorderRadius bottomRadius = BorderRadius.vertical(
      bottom: Radius.circular(8 * ((animation.value) == 0 ? 0 : 1)),
    );

    /// 背景颜色
    Color backgroundColor =
        (isFrontShowing && animation.value < angleHalfPI) || (!isFrontShowing && animation.value == 0.0) ? Colors.transparent : Colors.white.withOpacity(0.8);

    /// 当前需要展示的部件
    Widget? showingChild = (isFrontShowing && animation.value < angleHalfPI) || (animation.value == 0.0 && !hasBackChild) ? frontChild : backChild;

    return animation.value == anglePI && !hasBackChild
        ? const SizedBox.shrink()

        /// 翻转到背面，但是不存在背面 widget
        : Transform(
            alignment: alignment,

            /// 3d 动画的矩阵设置
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)

              /// 沿着 X 轴做旋转动画
              ..rotateX(rotateAngle),
            child: Container(
              color: backgroundColor,
              child: showingChild,
            ),
          );
  }
}

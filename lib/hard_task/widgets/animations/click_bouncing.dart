import 'package:flutter/material.dart';

class ClickBouncingAnimationWidget extends StatefulWidget {
  const ClickBouncingAnimationWidget({required this.child, Key? key})
      : super(key: key);
  final Widget child;

  @override
  State<ClickBouncingAnimationWidget> createState() =>
      _ClickBouncingAnimationWidgetState();
}

class _ClickBouncingAnimationWidgetState
    extends State<ClickBouncingAnimationWidget> with TickerProviderStateMixin {
  late AnimationController _controller;
  late double _scale;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      child: Transform.scale(
        scale: _scale,
        child: widget.child,
      ),
    );
  }

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}

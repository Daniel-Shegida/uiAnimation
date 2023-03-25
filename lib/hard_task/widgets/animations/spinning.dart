import 'package:flutter/material.dart';
import 'dart:math' as math;

class SpinningContainer extends StatefulWidget {
  const SpinningContainer({required this.child, Key? key}) : super(key: key);
  final Widget child;

  @override
  State<SpinningContainer> createState() => _SpinningContainerState();
}

class _SpinningContainerState extends State<SpinningContainer>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _SpinningContainer(
      controller: _controller,
      child: widget.child,
    );
  }
}

class _SpinningContainer extends AnimatedWidget {
  const _SpinningContainer({
    required AnimationController controller,
    required this.child,
    Key? key,
  }) : super(key: key, listenable: controller);

  final Widget child;

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _progress.value * 2.0 * math.pi,
      child: child,
    );
  }
}

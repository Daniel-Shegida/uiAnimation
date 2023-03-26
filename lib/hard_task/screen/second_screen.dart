import 'package:flutter/material.dart';
import 'package:hard_ui_impl_first_task/assets/strings/projects_strings.dart';
import 'package:hard_ui_impl_first_task/hard_task/utils/util_info.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/animations/changing_color.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/rotated_card_widget.dart';

/// второй экран задания
class SecondScreen extends StatefulWidget {
  const SecondScreen({required this.currentColor, Key? key}) : super(key: key);
  final double currentColor;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>
    with TickerProviderStateMixin {
  bool _visible = false;
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      value: widget.currentColor,
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();

    // после окончания анимация hero смена флага для появления текста
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _visible = !_visible;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _HeroWidget(
          controller: _controller,
          isVisible: _visible,
        ),
      ),
    );
  }
}

class _HeroWidget extends StatelessWidget {
  const _HeroWidget(
      {required this.controller, required this.isVisible, Key? key})
      : super(key: key);
  final AnimationController controller;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: UtilInfo.heroTag,
      child: ChangingShadowColorContainer(
        controller: controller,
        child: RotatedCardWidget(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: AnimatedOpacity(
            opacity: isVisible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: Center(
                child: Text(
              ProjectStrings.waiting,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            )),
          ),
        ),
      ),
    );
  }
}

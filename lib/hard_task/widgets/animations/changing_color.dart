import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hard_ui_impl_first_task/assets/colors/project_colors.dart';

/// контейнер с внешним контроллером изменяющий его цвет тени
class ChangingShadowColorContainer extends StatefulWidget {
  const ChangingShadowColorContainer(
      {required this.child, required this.controller, Key? key})
      : super(key: key);
  final Widget child;
  final AnimationController controller;

  @override
  State<ChangingShadowColorContainer> createState() =>
      _ChangingShadowColorContainerState();
}

class _ChangingShadowColorContainerState
    extends State<ChangingShadowColorContainer> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return _SpinningContainer(
      controller: widget.controller,
      child: widget.child,
    );
  }
}

class _SpinningContainer extends AnimatedWidget {
  const _SpinningContainer(
      {required AnimationController controller, required this.child, Key? key})
      : super(key: key, listenable: controller);

  final Widget child;

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ProjectColors.getColorFromController(_progress.value),
            blurRadius: 12.r,
          ),
        ],
      ),
      child: child,
    );
  }
}

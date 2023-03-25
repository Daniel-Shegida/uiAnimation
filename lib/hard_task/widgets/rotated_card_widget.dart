import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hard_ui_impl_first_task/assets/colors/project_colors.dart';
import 'dart:math' as math;

class RotatedCardWidget extends StatelessWidget {
  const RotatedCardWidget(
      {this.child, this.height, this.width, this.rotation, Key? key})
      : super(key: key);
  final Widget? child;
  final double? width;
  final double? height;
  final double? rotation;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotation != null ? rotation! * math.pi / 180 : 0,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: ProjectColors.cardColorBackground,
          boxShadow: [
            BoxShadow(
              color: ProjectColors.shadowColor,
              blurRadius: 6.r,
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(20.r),
          ),
        ),
        child: child,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hard_ui_impl_first_task/assets/colors/project_colors.dart';

/// виджет контейнера карточек с тенью и радиусом
class CardWidget extends StatelessWidget {
  const CardWidget({this.height, this.width, required this.child, Key? key})
      : super(key: key);
  final Widget child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          borderRadius: BorderRadius.all(Radius.circular(20.r))),
      child: child,
    );
  }
}

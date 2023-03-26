import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hard_ui_impl_first_task/assets/colors/project_colors.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/rotated_card_widget.dart';

/// виджет карточки с тайтломи прогресс баром
class ProgressCardWidget extends StatelessWidget {
  const ProgressCardWidget({
    required this.title,
    required this.currentValue,
    required this.maxValue,
    this.width,
    this.height,
    this.rotation,
    Key? key,
  }) : super(key: key);
  final String title;
  final int currentValue;
  final int maxValue;
  final double? width;
  final double? height;
  final double? rotation;

  @override
  Widget build(BuildContext context) {
    return RotatedCardWidget(
      width: width,
      height: height,
      rotation: rotation,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '$title $currentValue',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: FAProgressBar(
                maxValue: maxValue.toDouble(),
                size: 31.38.h,
                borderRadius: BorderRadius.circular(15.r),
                progressColor: ProjectColors.sliderColor,
                backgroundColor: ProjectColors.sliderColorBackground,
                currentValue: currentValue.toDouble(),
                direction: Axis.horizontal,
                verticalDirection: VerticalDirection.down,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

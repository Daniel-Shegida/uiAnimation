import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hard_ui_impl_first_task/assets/strings/projects_strings.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/rotated_card_widget.dart';


/// виджет смены проекта
class ShiftCardWidget extends StatelessWidget {
  const ShiftCardWidget({
    required this.statusShift,
    required this.shiftName,
    required this.shiftSubName,
    required this.messagesAmount,
    this.onPressed,
    this.width,
    this.height,
    this.rotation,
    Key? key,
  }) : super(key: key);
  final String statusShift;
  final String shiftName;
  final String shiftSubName;
  final int messagesAmount;
  final VoidCallback? onPressed;
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
        padding: EdgeInsets.all(15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              statusShift,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(
              shiftName,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              shiftSubName,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            ElevatedButton(
              onPressed: onPressed,
              child: Center(
                child: Text(
                  ProjectStrings.getChatMessageButtonString(messagesAmount),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hard_ui_impl_first_task/hard_task/utils/entity/shift_info.dart';
import 'package:hard_ui_impl_first_task/hard_task/utils/util_info.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/animations/click_bouncing.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/shift_card_widget.dart';


/// карусель смен проекта
class ShiftsCarouselWidget extends StatelessWidget {
  const ShiftsCarouselWidget(
      {required this.shifts,
      required this.height,
      required this.width,
      this.rotation,
      Key? key})
      : super(key: key);
  final List<ShiftInfo> shifts;
  final double height;
  final double width;
  final double? rotation;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: height,
        viewportFraction: 0.9,
        enableInfiniteScroll: false,
      ),
      items: shifts.map((shift) {
        return Builder(
          builder: (BuildContext context) {
            return Center(
              child: Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: ClickBouncingAnimationWidget(
                  child: _ShiftsWidget(
                    statusShift: shift.shiftInfoStatus,
                    shiftName: shift.shiftInfoName,
                    shiftSubName: shift.shiftInfoSubName,
                    messagesAmount: shift.messagesAmount,
                    width: width,
                    height: height,
                    rotation: rotation,
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class _ShiftsWidget extends StatelessWidget {
  const _ShiftsWidget(
      {required this.statusShift,
      required this.shiftName,
      required this.shiftSubName,
      required this.messagesAmount,
      required this.height,
      required this.width,
      this.rotation,
      Key? key})
      : super(key: key);
  final String statusShift;
  final String shiftName;
  final String shiftSubName;
  final int messagesAmount;
  final double height;
  final double width;
  final double? rotation;

  @override
  Widget build(BuildContext context) {
    return ShiftCardWidget(
      statusShift: statusShift,
      shiftName: shiftName,
      shiftSubName: shiftSubName,
      messagesAmount: messagesAmount,
      width: width,
      height: height - UtilInfo.shadowSizeValue,
    );
  }
}

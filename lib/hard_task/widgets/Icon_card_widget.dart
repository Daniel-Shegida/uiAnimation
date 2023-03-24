import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:hard_ui_impl_first_task/assets/res/project_icon.dart';
import 'package:hard_ui_impl_first_task/hard_task/utils/project_dummy_info.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/rotated_card_widget.dart';

class IconCardWidget extends StatelessWidget {
  const IconCardWidget(
      {required this.cardName,
      required this.iconPath,
      this.width,
      this.height,
      this.rotation,
      Key? key})
      : super(key: key);
  final String cardName;
  final String iconPath;
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
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 13.w),
        child: Row(
          children: [
            Text(
              ProjectDummyInfo.dummyActivityInfo,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Expanded(
              child: Container(),
            ),
            SvgIcon(
              size: 22.w,
              icon: SvgIconData(ProjectIcons.iArrow),
            ),
          ],
        ),
      ),
    );
  }
}

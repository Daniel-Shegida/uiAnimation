import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hard_ui_impl_first_task/assets/strings/projects_strings.dart';
import 'package:hard_ui_impl_first_task/hard_task/utils/entity/balance_enums.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/rotated_card_widget.dart';

/// виджет баланса с кнопкой
class BalancesCardWidget extends StatelessWidget {
  const BalancesCardWidget(
      {required this.curency,
      required this.currentValue,
      this.width,
      this.height,
      this.rotation,
      this.onPressed,
      Key? key})
      : super(key: key);
  final CurrencyTypes curency;
  final int currentValue;
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
        padding: EdgeInsets.symmetric(horizontal: 10.0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '${ProjectStrings.balanceInfo} ${curency.currencyName}$currentValue${curency.currencyIcon}',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            ElevatedButton(
              onPressed: onPressed,
              child: SizedBox(
                width: width! * 0.72,
                child: const Center(
                  child: (Text(
                    ProjectStrings.spend,
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

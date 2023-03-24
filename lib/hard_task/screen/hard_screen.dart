import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hard_ui_impl_first_task/assets/colors/project_colors.dart';
import 'package:hard_ui_impl_first_task/assets/res/project_icon.dart';
import 'package:hard_ui_impl_first_task/assets/strings/projects_strings.dart';
import 'package:hard_ui_impl_first_task/hard_task/utils/entity/balance_enums.dart';
import 'package:hard_ui_impl_first_task/hard_task/utils/project_dummy_info.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/Icon_card_widget.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/balances_card_widget.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/button_card_widget.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/progress_card_widget.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/shift_carousel_widget.dart';

class HardScreen extends StatelessWidget {
  const HardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.cardColorBackground,
      body: Padding(
        padding:
            EdgeInsets.only(left: 15.w, right: 12.w, top: 28.h, bottom: 17.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Row(
              children: [
                const _MoneyBalanceWidget(),
                SizedBox(
                  width: 16.w,
                ),
                const _ProfileWidget(),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                _AchievementWidget(),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            const _ActivityWidget(),
            SizedBox(
              height: 15.h,
            ),
            const _ShiftsWidget(),
            SizedBox(
              height: 27.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const _CrystalBalanceWidget(),
                Column(
                  children: [
                    const _SectionWidget(),
                    SizedBox(
                      height: 16.h,
                    ),
                    const _MyLessonsWidget(),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _MoneyBalanceWidget extends StatelessWidget {
  const _MoneyBalanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BalancesCardWidget(
      curency: CurrencyTypes.money,
      currentValue: ProjectDummyInfo.dummyMoneyBalanceInfo,
      width: 254.w,
      height: 122.h,
      rotation: -5.79,
      onPressed: () {},
    );
  }
}

class _CrystalBalanceWidget extends StatelessWidget {
  const _CrystalBalanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BalancesCardWidget(
      curency: CurrencyTypes.crystal,
      currentValue: ProjectDummyInfo.dummyCrystalBalanceInfo,
      width: 164.09.w,
      height: 169.63.h,
      rotation: -1.51,
      onPressed: () {},
    );
  }
}

class _ProfileWidget extends StatelessWidget {
  const _ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonCardWidget(
      buttonName: ProjectStrings.profile,
      width: 112.92.w,
      height: 89.56.h,
      rotation: 27.76,
    );
  }
}

class _AchievementWidget extends StatelessWidget {
  const _AchievementWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProgressCardWidget(
      title: ProjectStrings.lvlOfAchievement,
      currentValue: 3,
      maxValue: 5,
      width: 302.w,
      height: 122.h,
      rotation: 4.58,
    );
  }
}

class _ActivityWidget extends StatelessWidget {
  const _ActivityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconCardWidget(
      cardName: ProjectDummyInfo.dummyActivityInfo,
      iconPath: ProjectIcons.iArrow,
      width: 298.44.w,
      height: 65.59.h,
      rotation: -0.25,
    );
  }
}

class _ShiftsWidget extends StatelessWidget {
  const _ShiftsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ShiftsCarouselWidget(
      shifts: ProjectDummyInfo.dummyShifts,
      width: 354,
      height: 168,
      rotation: -2.76,
    );
  }
}

class _SectionWidget extends StatelessWidget {
  const _SectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonCardWidget(
      buttonName: ProjectStrings.section,
      width: 175.49.w,
      height: 73.81.h,
      rotation: -3.75,
    );
  }
}

class _MyLessonsWidget extends StatelessWidget {
  const _MyLessonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonCardWidget(
      buttonName: ProjectStrings.myLessons,
      width: 175.49.w,
      height: 73.81.h,
      rotation: 2.32,
    );
  }
}

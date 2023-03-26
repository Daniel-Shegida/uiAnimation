import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hard_ui_impl_first_task/assets/colors/project_colors.dart';
import 'package:hard_ui_impl_first_task/assets/res/project_icon.dart';
import 'package:hard_ui_impl_first_task/assets/strings/projects_strings.dart';
import 'package:hard_ui_impl_first_task/hard_task/screen/second_screen.dart';
import 'package:hard_ui_impl_first_task/hard_task/utils/entity/balance_enums.dart';
import 'package:hard_ui_impl_first_task/hard_task/utils/project_dummy_info.dart';
import 'package:hard_ui_impl_first_task/hard_task/utils/util_info.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/Icon_card_widget.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/animations/changing_color.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/animations/spinning.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/balances_card_widget.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/button_card_widget.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/progress_card_widget.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/rotated_card_widget.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/shift_carousel_widget.dart';


class HardScreen extends StatefulWidget {
  const HardScreen({Key? key}) : super(key: key);

  @override
  State<HardScreen> createState() => _HardScreenState();
}

class _HardScreenState extends State<HardScreen> with TickerProviderStateMixin {
  bool isVisible = true;

  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _SafeAreaWithBackground(
      child: Scaffold(
        backgroundColor: ProjectColors.appBackground,
        body: Padding(
          padding: EdgeInsets.only(
              left: 15.w, right: 12.w, top: 15.h, bottom: 17.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              Hero(
                tag: UtilInfo.heroTag,
                child: GestureDetector(
                  onTap: _heroTap,
                  child: _ActivityWidget(
                    controller: _controller,
                    isVisible: isVisible,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              const _ShiftsWidget(),
              SizedBox(
                height: 20.h,
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
      ),
    );
  }

  void _heroTap() {
    _navigateToSecondPage(context, _controller.value);
    setState(() {
      isVisible = !isVisible;
    });
  }

  void _navigateToSecondPage(
    BuildContext context,
    double currentColor,
  ) async {
    await Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(seconds: UtilInfo.timeOfNavigation),
        reverseTransitionDuration: const Duration(seconds: UtilInfo.timeOfNavigation),
        pageBuilder: (_, __, ___) => SecondScreen(
          currentColor: currentColor,
        ),
      ),
    );
    Future.delayed(const Duration(seconds: UtilInfo.timeOfNavigation), () {
      setState(() {
        isVisible = !isVisible;
      });
    });
  }
}

class _SafeAreaWithBackground extends StatelessWidget {
  const _SafeAreaWithBackground({required this.child, Key? key})
      : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ProjectColors.appBackground,
      child: SafeArea(
        child: child,
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
    return SpinningContainer(
      child: ButtonCardWidget(
        buttonName: ProjectStrings.profile,
        width: 112.92.w,
        height: 89.56.h,
        rotation: 27.76,
      ),
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
  const _ActivityWidget(
      {required this.controller, required this.isVisible, Key? key})
      : super(key: key);
  final AnimationController controller;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return ChangingShadowColorContainer(
      controller: controller,
      child: isVisible
          ? IconCardWidget(
              cardName: ProjectDummyInfo.dummyActivityInfo,
              iconPath: ProjectIcons.iArrow,
              width: 298.44.w,
              height: 65.59.h,
              rotation: -0.25,
            )
          : RotatedCardWidget(
              width: 298.44.w,
              height: 65.59.h,
              rotation: -0.25,
            ),
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

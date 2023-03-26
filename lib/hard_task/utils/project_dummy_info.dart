import 'package:hard_ui_impl_first_task/hard_task/utils/entity/shift_info.dart';

/// тестовая информация проекта из фигмы
abstract class ProjectDummyInfo {
  static const int dummyLvlOfAchievement = 5;

  static const int dummyMaxLvlOfAchievement = 5;

  static const int dummyMoneyBalanceInfo = 1500;

  static const int dummyCrystalBalanceInfo = 200;

  static const String dummyActivityInfo = '13:15 Обед';

  static const String dummyShiftInfo = '1 Смена 2022';

  static const String dummyShiftStatus = 'Сейчас идёт';

  static const String dummyShiftSubInfo = 'Корпус №3       Отряд №2';

  static const ShiftInfo dummyShift =
      ShiftInfo(dummyShiftStatus, dummyShiftInfo, dummyShiftSubInfo, 6);

  static const List<ShiftInfo> dummyShifts = [
    dummyShift,
    dummyShift,
    dummyShift
  ];
}

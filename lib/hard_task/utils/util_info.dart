import 'package:flutter_screenutil/flutter_screenutil.dart';

/// некоторые данные нужные для проекта
abstract class UtilInfo {
  /// время навигации между экранами
  static const int timeOfNavigation = 3;

  /// тег героя
  static const String heroTag = 'Hero Page';

  /// костыль, чтобы тень нормально отрисовывалась виджетом
  static double shadowSizeValue = 20.h;
}

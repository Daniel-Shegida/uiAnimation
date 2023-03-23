import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hard_ui_impl_first_task/assets/colors/project_colors.dart';

abstract class ProjectThemes {
  /// Светлая тема проекта
  static ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: ProjectColors.textColorPrimary,
        fontSize: 28,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: ProjectColors.textColorPrimary,
        fontSize: 26,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: ProjectColors.textColorPrimary,
        fontSize: 20,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Montserrat',
        color: ProjectColors.textColorTitles,
        fontSize: 15,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Montserrat',
        color: ProjectColors.textColorPrimary,
        fontSize: 15,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        backgroundColor:
            MaterialStateProperty.all(ProjectColors.buttonColorBackground),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        elevation: MaterialStateProperty.all(0),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15.sp,
          ),
        ),
        foregroundColor:
            MaterialStateProperty.all(ProjectColors.textColorButtons),
      ),
    ),
  );
}

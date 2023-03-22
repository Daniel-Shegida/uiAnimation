import 'dart:ui';

import 'package:hard_ui_impl_first_task/assets/colors/project_colors.dart';

abstract class ProjectStyles {
  static  TextStyle boldBlack20Montserrat = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    color: ProjectColors.textColorPrimary,
    fontSize: 20,

  );

  static  TextStyle boldBlack26Montserrat = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    color: ProjectColors.textColorPrimary,
    fontSize: 26,
  );

  static  TextStyle boldBlack28Montserrat = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    color: ProjectColors.textColorPrimary,
    fontSize: 28,
  );

  static  TextStyle semiBoldBlack15Montserrat = TextStyle(
    fontFamily: 'Montserrat',
    color: ProjectColors.textColorPrimary,
    fontSize: 15,
  );

  static  TextStyle semiBoldRed15Montserrat = TextStyle(
    fontFamily: 'Montserrat',
    color: ProjectColors.textColorTitles,
    fontSize: 15,
  );

  static  TextStyle semiBoldBlue15Montserrat = TextStyle(
    fontFamily: 'Montserrat',
    color: ProjectColors.textColorButtons,
    fontSize: 15,
  );
}
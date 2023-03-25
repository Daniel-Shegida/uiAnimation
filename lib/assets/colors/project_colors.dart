import 'package:flutter/material.dart';


abstract class ProjectColors {
  static const Color textColorPrimary = _rgbDarkBlue;
  static const Color textColorButtons = _rgbBlue;
  static const Color textColorTitles = _rgbRed;
  static const Color cardColorBackground = _rgbWhite;
  static const Color buttonColorBackground = _rgbLightBlue;
  static const Color sliderColorBackground = _rgbLightBlue;
  static const Color sliderColor = _rgbGreen;
  static const Color shadowColor = _rgbDarkGreyTr;
  static const Color appBackground = _rgbLightGrey;




  static const Color _rgbDarkBlue = Color.fromRGBO(3, 49, 75, 1);
  static const Color _rgbWhite = Color.fromRGBO(255, 255, 255, 1);
  static const Color _rgbLightBlue = Color.fromRGBO(237, 239, 255, 1);
  static const Color _rgbBlue = Color.fromRGBO(77, 93, 250, 1);
  static const Color _rgbGreen = Color.fromRGBO(170, 255, 130, 1);
  static const Color _rgbRed = Color.fromRGBO(230, 73, 45, 1);
  static const Color _rgbLightGrey = Color.fromRGBO(249, 250, 252, 1);
  static const Color _rgbDarkGreyTr = Color.fromRGBO(77, 93, 250, 0.3);

  static Color getColorFromController(double progress){
    return  Color.fromRGBO(
      60,
      (progress * 255).round(),
      175,
      1,
    );
  }
}
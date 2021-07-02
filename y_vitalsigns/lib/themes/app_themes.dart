import 'package:flutter/material.dart';

enum AppThemeColor {
  GreenLight,
  GreenDark,
  BlueLight,
  BlueDark,
}

final appThemeData = {
  AppThemeColor.GreenLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
  ),
  AppThemeColor.GreenDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green[700],
  ),
  AppThemeColor.BlueLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  ),
  AppThemeColor.BlueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
  ),
};

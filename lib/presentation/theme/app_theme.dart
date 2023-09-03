import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';

ThemeData buildLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    primarySwatch: primarySwatch,
    scaffoldBackgroundColor: lightColor,
  );
}

ThemeData buildDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    primarySwatch: primarySwatch,
    scaffoldBackgroundColor: darkColor,
  );
}

import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    primarySwatch: primarySwatch,
    scaffoldBackgroundColor: lightColor,
    canvasColor: Colors.transparent,
    fontFamily: GoogleFonts.workSans().fontFamily,
  );
}

ThemeData buildDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    primarySwatch: primarySwatch,
    scaffoldBackgroundColor: darkColor,
    canvasColor: Colors.transparent,
    fontFamily: GoogleFonts.workSans().fontFamily,
  );
}

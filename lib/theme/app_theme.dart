import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_aris_management_tool/theme/app_colors.dart';

final lightColors = AppColors.dark();
final themeLight = ThemeData.light().copyWith(
  scaffoldBackgroundColor: lightColors.background,
  textTheme: GoogleFonts.notoSansTextTheme(ThemeData.light().textTheme),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: lightColors.error,
    behavior: SnackBarBehavior.floating,
  ),
);

final dartColors = AppColors.dark();
final themeDark = ThemeData.light().copyWith(
  scaffoldBackgroundColor: dartColors.background,
  textTheme: GoogleFonts.notoSansTextTheme(ThemeData.light().textTheme),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: dartColors.error,
    behavior: SnackBarBehavior.floating,
  ),
);



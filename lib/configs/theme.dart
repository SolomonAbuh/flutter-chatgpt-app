import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';

class AppTheme {
  /// Exposes theme data to MaterialApp
  static ThemeData themeData = ThemeData(
      fontFamily: 'Metropolis',
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
      ));

  static const TextStyle headerTextStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: AppColors.textColor,
  );
}

// by https://github.com/abdelillahbel
import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF03346E);
  static const secondary = Color(0xFFE2E2B6);
  static const backgroundLight = Color(0xFFF5F5F5);
  static const backgroundDark = Color(0xFF121212);
  static const textLight = Colors.black; // Correct color for light mode
  static const textDark = Colors.white; // Correct color for dark mode
  static const fabLight = Color(0xFFE2E2B6); // FAB color for light mode
  static const fabDark = Color(0xFF03346E); // FAB color for dark mode
  static const iconLight = Color(0xFF000000); // FAB color for light mode
  static const iconDark = Color(0xFFFFFFFF); // FAB color for dark mode
}

class AppThemes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.secondary,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.secondary,
      foregroundColor: AppColors.textLight,
      titleTextStyle: TextStyle(
        color: AppColors.textLight,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(color: AppColors.textLight, fontSize: 20),
      bodyMedium: TextStyle(color: AppColors.textLight, fontSize: 16),
    ),
    colorScheme: const ColorScheme.light(
        primary: AppColors.secondary,
        secondary: AppColors.fabLight,
        outline: AppColors.iconLight
        // Secondary for light theme
        ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.textDark,
      titleTextStyle: TextStyle(
        color: AppColors.textDark, // Change this color for dark mode title
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(color: AppColors.textDark, fontSize: 20),
      bodyMedium: TextStyle(color: AppColors.textDark, fontSize: 16),
    ),
    colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.fabDark, // Secondary for dark theme
        outline: AppColors.iconDark),
  );
}

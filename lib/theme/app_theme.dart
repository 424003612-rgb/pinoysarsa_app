import 'package:flutter/material.dart';

// Shared colors used by both screens.
// Replace these hex values with the exact ones from your Figma design.
class AppColors {
  static const Color background = Color(0xFFF0F4F9); // light blue-grey page
  static const Color dark = Color(0xFF1A0505); // dark brown/black (buttons, logo)
  static const Color text = Color(0xFF1A1A1A); // main text
  static const Color textGrey = Color(0xFF6B6B6B); // hints and descriptions
}

// One ThemeData for the whole app, so both screens match.
ThemeData buildAppTheme() {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.dark),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.text,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColors.text,
      ),
      bodyMedium: TextStyle(fontSize: 13, color: AppColors.text),
      bodySmall: TextStyle(fontSize: 12, color: AppColors.textGrey),
    ),
  );
}
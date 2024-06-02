import 'package:flutter/material.dart';

import 'colors.dart';

/// Custom Class for Light & Dark Text Themes
class AppTextTheme {
  AppTextTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.white),

    titleLarge: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.normalTextColor),
    titleMedium: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w400, color: AppColors.normalTextColor),
    titleSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w400, color: AppColors.redTextColor),

    bodyLarge: const TextStyle().copyWith(fontSize: 13.0, fontWeight: FontWeight.w600, color: AppColors.normalTextColor),
    bodyMedium: const TextStyle().copyWith(fontSize: 13.0, fontWeight: FontWeight.normal, color: AppColors.normalTextColor),
    bodySmall: const TextStyle().copyWith(fontSize: 13.0, fontWeight: FontWeight.w600, color: AppColors.normalTextColor.withOpacity(0.5)),

    labelMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: AppColors.redTextColor),
    labelLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.normalTextColor),
    labelSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.greyTextColor),

  );

}

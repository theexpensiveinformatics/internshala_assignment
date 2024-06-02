import 'package:assignment_internshala/utils/colors.dart';
import 'package:assignment_internshala/utils/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'ProximaNova',
    textTheme: AppTextTheme.lightTextTheme,
    scaffoldBackgroundColor: AppColors.background,
  );
}

import 'package:flutter/material.dart';
import 'package:vie_app_ui/utils/colors/color_constants.dart';
import 'app_consts/app_constants.dart';
import 'app_text_styles.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ColorConstants.white,
    primaryColor: ColorConstants.primary,
    fontFamily: AppConstants.kAppFontFamily,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorConstants.white,
      iconTheme: IconThemeData(color: ColorConstants.white, size: 23),
    ),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   selectedItemColor: ColorConstants.black,
    //   selectedLabelStyle: AppTextStyles.kBodySmallLight,
    // ),
    textTheme: TextTheme(
      bodyMedium: AppTextStyles.kBodyMediumDark,
      bodyLarge: AppTextStyles.kBodyLargeDark,
      headlineMedium: AppTextStyles.kHeadingMediumDark,
      headlineLarge: AppTextStyles.kHeadingLargeDark,
    ),
  );
}

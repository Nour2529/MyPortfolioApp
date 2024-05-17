import 'package:flutter/material.dart';
import 'package:personal_website/config/constants/constants.dart';
import 'package:personal_website/config/theme/app_colors.dart';

import 'text_theme.dart';

ThemeData getAppTheme(BuildContext context, Locale currentLocale, bool isDarkTheme) {
  return isDarkTheme?createDarkTheme(currentLocale):createLightTheme(currentLocale);

}
ThemeData createLightTheme(Locale currentLocale) {
  return ThemeData(
    fontFamily: "Arial",
    primaryColorLight: AppColors.greenLight,
    primaryColor: AppColors.green,
    primaryColorDark: AppColors.greenDark,
    colorScheme: ColorScheme.light(
      background: Colors.white,
      onBackground: Colors.black,
      secondary: Colors.blue,
      secondaryContainer: Colors.blue.shade700,
    ),
    cardTheme: const CardTheme(
      elevation: 5,
    ),
    textTheme: getBlackTextTheme,
  );
}

ThemeData createDarkTheme(Locale currentLocale) {

  return ThemeData(
    fontFamily: "Arial",
    primaryColorLight: Colors.lightBlue,
    primaryColor: Colors.blue,
    primaryColorDark: Colors.blueAccent,
    colorScheme: ColorScheme.dark(
      background: Colors.black,
      onBackground: Colors.white,
      secondary: Colors.blue,
      secondaryContainer: Colors.blue.shade700,
    ),
    cardTheme: const CardTheme(
      elevation: 2,
    ),
    textTheme: getWhiteTextTheme, // Assuming you have defined a white text theme
  );
}
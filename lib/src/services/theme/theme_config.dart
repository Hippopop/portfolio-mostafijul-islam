import 'package:flutter/material.dart';

import 'app_theme.dart';

final class ThemeConfiguration {
  ThemeConfiguration._();

  static ThemeData get initialTheme => availableThemeList[lightThemeKey]!;
  static Map<String, ThemeData> availableThemeList = {
    lightThemeKey: lightTheme,
  };
}

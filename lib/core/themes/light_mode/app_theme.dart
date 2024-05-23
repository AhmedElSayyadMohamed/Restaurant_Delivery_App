import 'package:flutter/material.dart';
import '../dark_mode/dark_mode.dart';
import 'light_mode.dart';

enum Themes { system, light, dark }

extension ThemeMode on ThemeData {
  ThemeData getThemeMode({required Themes themeMode,required BuildContext context}) {
    switch (themeMode) { 
     case Themes.system:
        return getDarkMode;
      case Themes.light:
        return getLightMode(context);
      case Themes.dark:
        return getDarkMode;
    }
  }
}

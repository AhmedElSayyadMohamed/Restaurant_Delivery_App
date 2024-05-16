import 'package:flutter/material.dart';

ThemeData get getLightMode {
  var primaryColor = const Color(0xfffc6011);
  return ThemeData(
    primaryColor: primaryColor,
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.grey[700],
      ),
      bodySmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w300,
        color: Colors.grey[600],
      ),
    ),






    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize:const Size(double.infinity, 45),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

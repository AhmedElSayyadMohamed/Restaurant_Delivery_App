import 'package:flutter/material.dart';

ThemeData get getLightMode {
    return ThemeData(
      primaryColor: Color.fromARGB(255, 255, 51, 0),
      textTheme: TextTheme(
        titleMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: Colors.grey[700],
          ),
          bodySmall: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w300,
          color: Colors.grey[600],
          )
      )
      );
  }
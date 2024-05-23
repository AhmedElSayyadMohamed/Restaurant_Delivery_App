import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/utils/app_size/app_size.dart';

ThemeData  getLightMode(context) {
  var primaryColor = const Color(0xfffc6011);
  return ThemeData(
    scaffoldBackgroundColor: Colors.grey[50],
    primaryColor: primaryColor,
    textTheme: TextTheme(
      titleLarge: TextStyle(//28
        fontSize: MediaQuery.of(context).textScaler.scale(28),
        fontWeight: FontWeight.w600,
        color: Colors.grey[800],
      ),
      titleMedium: TextStyle(
        fontSize:MediaQuery.of(context).textScaler.scale(24),
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      ),
      bodySmall: TextStyle(
        fontSize: MediaQuery.of(context).textScaler.scale(14),
        fontWeight: FontWeight.w400,
        color: Colors.grey[600],
      ),
      bodyMedium: TextStyle(
        fontSize: MediaQuery.of(context).textScaler.scale(18),
        fontWeight: FontWeight.w300,
        color: Colors.grey[600],
      ),
      labelMedium: TextStyle(
        fontSize: MediaQuery.of(context).textScaler.scale(24),
        fontWeight: FontWeight.w300,
        color: Colors.grey[600],
      ),
      labelSmall: TextStyle(
        fontSize: MediaQuery.of(context).textScaler.scale(15),
        fontWeight: FontWeight.w300,
        color: Colors.grey[200],
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      errorMaxLines: 2,
      hintStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Colors.grey[400],
      ),
      contentPadding:
          const EdgeInsetsDirectional.only(start: 35, bottom: 7, top: 5),
      filled: true,
      fillColor: Colors.grey[100],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide.none,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 45),
        backgroundColor: primaryColor,
        foregroundColor: Colors.grey[200],
        textStyle: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),

    // Floating Action Button
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      shape: const CircleBorder(),
      elevation: 5,
      iconSize: AppSize.s35,
    ),

    //Bottom Navigation Bar
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Colors.white,
      shape: CircularNotchedRectangle(),
      elevation: 20,
      shadowColor: Colors.grey,
    ),
  
  // Card
  cardTheme: CardTheme(
    elevation: 0,
    color:Colors.grey[50] ,
  )
  );
}

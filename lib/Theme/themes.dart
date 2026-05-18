import 'package:flutter/material.dart';

class AppTheme{
  static final ThemeData lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
    primaryColor: Colors.red,
    primarySwatch: Colors.lightGreen,
    scaffoldBackgroundColor: Colors.yellowAccent,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        )
      )
    )
  );


  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.white,
    primarySwatch: Colors.grey,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        )
      )
    )
  );
}
import 'package:flutter/material.dart';

ColorScheme colorScheme =
    ColorScheme.fromSeed(seedColor: const Color(0xFF007248));

final theme = ThemeData(
  colorScheme: colorScheme,
  useMaterial3: true,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      foregroundColor: Colors.white,
      backgroundColor: colorScheme.primary,
    ),
  ),
  // outlinedButtonTheme: OutlinedButtonThemeData(
  //   style: OutlinedButton.styleFrom(
  //     // shape: RoundedRectangleBorder(
  //     //   borderRadius: BorderRadius.circular(30),
  //     // ),
  //     foregroundColor: colorScheme.primary,
  //     backgroundColor: Colors.white,
  //     textStyle: TextStyle(
  //       color: Colors.black,
  //     ),
  //   ),
  // ),
  inputDecorationTheme: const InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
  ),
);

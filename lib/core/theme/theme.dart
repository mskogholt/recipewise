import 'package:flutter/material.dart';

Color _seedColor = const Color(0xAA21E6F3);

ThemeData darkTheme() {
  ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: _seedColor,
    brightness: Brightness.dark,
  );
  return ThemeData.from(colorScheme: colorScheme).copyWith(
    inputDecorationTheme: InputDecorationTheme(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.primary, width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(32.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.primary, width: 2.0),
        borderRadius: const BorderRadius.all(Radius.circular(32.0)),
      ),
    ),
  );
}

ThemeData lightTheme() {
  ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: _seedColor,
    brightness: Brightness.light,
  ).copyWith(surface: const Color(0xAAFFFFFF));
  return ThemeData.from(
    colorScheme: colorScheme,
  ).copyWith(
    inputDecorationTheme: InputDecorationTheme(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.primary, width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(32.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.primary, width: 2.0),
        borderRadius: const BorderRadius.all(Radius.circular(32.0)),
      ),
    ),
  );
}

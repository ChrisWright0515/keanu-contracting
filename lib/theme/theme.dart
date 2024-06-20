import 'package:flutter/material.dart';

import '../constants.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryColor,
  scaffoldBackgroundColor: bgColor,
  colorScheme: ColorScheme.light(
    primary: primaryColor,
    tertiary: tertiaryColor,
    secondary: secondaryColor,
    surface: formFieldColor,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: bodyTextColor,
    error: formFieldErrorColor,
    onError: Colors.white,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: bodyTextColor),
    bodyMedium: TextStyle(color: bodyTextColor),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: formFieldColor,
    hoverColor: formFieldHoverColor,
    errorStyle: TextStyle(color: formFieldErrorColor),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: darkPrimaryColor,
  scaffoldBackgroundColor: darkBgColor,
  colorScheme: const ColorScheme.dark(
    primary: darkPrimaryColor,
    secondary: darkSecondaryColor,
    surface: darkFormFieldColor,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: darkBodyTextColor,
    error: darkFormFieldErrorColor,
    onError: Colors.white,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: darkBodyTextColor),
    bodyMedium: TextStyle(color: darkBodyTextColor),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: darkFormFieldColor,
    hoverColor: darkFormFieldHoverColor,
    errorStyle: TextStyle(color: darkFormFieldErrorColor),
  ),
);

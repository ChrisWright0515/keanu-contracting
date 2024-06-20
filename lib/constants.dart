import 'package:flutter/material.dart';

// Light Theme Colors
const primaryColor = Color(0xFF4A90E2); // Soft Blue
const secondaryColor = Color(0xFF1C3D5A); // Contrasting Blue
const bgColor = Color(0xFFE0E0E0);
const tertiaryColor = Color(0xFF9E9E9E);
const bodyTextColor = Color(0xFF333333); // Dark Grey
const formFieldColor = Color(0xFFFFFFFF); // White for forms
const formFieldHoverColor = Color(0xFF72B2FF); // Lighter Blue for hover
const formFieldErrorColor = Color(0xFFD32F2F); // Error Red

// Dark Theme Colors
const darkPrimaryColor = Color(0xFF003366); // Deep Blue
const darkSecondaryColor = Color(0xFF005A9C); // Slightly Lighter Deep Blue
const darkBgColor = Color(0xFF121212); // Very Dark Blue/Almost Black
const darkBodyTextColor = Color(0xFFE0E0E0); // Light Grey
const darkFormFieldColor = Color(0xFF1E1E1E); // Dark Grey for forms
const darkFormFieldHoverColor =
    Color(0xFF336699); // Slightly Lighter Deep Blue for hover
const darkFormFieldErrorColor = Color(0xFFCF6679); // Error Red
const defaultPadding = 20.0;
const defaultDuration = Duration(seconds: 1);
const maxWidth = 1440.0;

// capitalize every word in a string
String capitalize(String s) {
  return s.split(' ').map((word) {
    if (word.isEmpty) {
      return '';
    }
    return word[0].toUpperCase() + word.substring(1);
  }).join(' ');
}

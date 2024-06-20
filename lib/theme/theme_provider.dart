import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData;
  static const String _themePreferenceKey = 'theme_preference';

  ThemeProvider() : _themeData = lightTheme {
    _loadTheme();
  }

  ThemeData get themeData => _themeData;

  void setTheme(ThemeData theme) {
    _themeData = theme;
    _saveTheme(theme == darkTheme);
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightTheme) {
      setTheme(darkTheme);
    } else {
      setTheme(lightTheme);
    }
  }

  void _saveTheme(bool isDarkTheme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(_themePreferenceKey, isDarkTheme);
  }

  void _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isDarkTheme = prefs.getBool(_themePreferenceKey) ?? false;
    _themeData = isDarkTheme ? darkTheme : lightTheme;
    notifyListeners();
  }

  // check if the current theme is dark
  bool isDarkTheme() {
    return _themeData == darkTheme;
  }
}

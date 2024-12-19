import 'package:flutter/material.dart';
import 'package:foodie/themes/light_mode.dart' as light;
import 'package:foodie/themes/dark_mode.dart' as dark;

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = light.lightMode;

  ThemeData get themedata => _themeData;

  bool get isDarkMode => _themeData == dark.darkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == light.lightMode) {
      _themeData = dark.darkMode;
    } else {
      _themeData = light.lightMode;
    }
  }
}
 
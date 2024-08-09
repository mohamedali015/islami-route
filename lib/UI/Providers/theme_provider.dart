// observable - subject - provider
import 'package:flutter/material.dart';
import 'package:islami/ui_utils.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  void changeTheme(ThemeMode newTheme) {
    currentTheme = newTheme;
    notifyListeners();
  }

  bool isDarkEnabled() {
    return currentTheme == ThemeMode.dark;
  }

  static ThemeProvider get(BuildContext context) {
    return Provider.of<ThemeProvider>(context);
  }

  String getCurrentTheme(BuildContext context) {
    return isDarkEnabled()
        ? getTranslation(context).dark
        : getTranslation(context).light;
  }
}

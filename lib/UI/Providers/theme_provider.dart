// observable - subject - provider
import 'package:flutter/material.dart';
import 'package:islami/ui_utils.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.system;
  static const String isDarkTheme = 'theme';

  final SharedPreferences prefs;

  ThemeProvider({required this.prefs}) {
    readSavedTheme();
  }

  void readSavedTheme() async {
    var isDark = prefs.getBool(isDarkTheme) ?? false;
    currentTheme = isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void saveTheme() async {
    prefs.setBool(isDarkTheme, isDarkEnabled());
  }

  void changeTheme(ThemeMode newTheme) {
    currentTheme = newTheme;
    notifyListeners();
    saveTheme();
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

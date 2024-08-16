import 'package:flutter/material.dart';
import 'package:islami/ui_utils.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  String currentLocale = 'en';
  static const String langKey = "lang";

  final SharedPreferences prefs;

  LocaleProvider({required this.prefs}) {
    readSavedLocale();
  }

  void readSavedLocale() async {
    currentLocale = prefs.getString(langKey) ?? 'en';
  }

  void saveLocale() async {
    prefs.setString(langKey, currentLocale);
  }

  void changeLocale(String newLocale) {
    currentLocale = newLocale;
    notifyListeners();
    saveLocale();
  }

  static LocaleProvider get(BuildContext context) {
    return Provider.of<LocaleProvider>(context);
  }

  String getCurrentLocale(BuildContext context) {
    return currentLocale == 'en'
        ? getTranslation(context).english
        : getTranslation(context).arabic;
  }
}

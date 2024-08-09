import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimary = Color(0xFFB7935F);

  static final ThemeData lighttheme = ThemeData(
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        elevation: 24,
        margin: const EdgeInsets.symmetric(vertical: 65, horizontal: 24),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 33,
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFFB7925F),
        primary: const Color(0xFFB7925F),
        onPrimary: Colors.white,
        secondary: const Color(0xFFB7925F),
        onSecondary: Colors.black,
      ));
}

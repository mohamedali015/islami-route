import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color darkSecondary = Color(0xFFFACC1D);

  static final ThemeData lighttheme = ThemeData(
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        titleMedium: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: "ElMessiri",
            color: Colors.black),
        titleSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          fontFamily: "ElMessiri",
          color: Colors.black,
        ),
        bodyLarge:
            TextStyle(fontSize: 25, fontFamily: "Inter", color: Colors.black),
        bodyMedium:
            TextStyle(fontSize: 20, fontFamily: "Inter", color: Colors.black),
      ),
      cardTheme: CardTheme(
        color: Colors.white,
        surfaceTintColor: null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        elevation: 24,
        margin: const EdgeInsets.symmetric(vertical: 65, horizontal: 24),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
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

  static final ThemeData darktheme = ThemeData(
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: darkPrimary,
      ),
      textTheme: const TextTheme(
        titleMedium: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: "ElMessiri",
            color: Colors.white),
        titleSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            fontFamily: "ElMessiri",
            color: Colors.white),
        bodyLarge:
            TextStyle(fontSize: 25, fontFamily: "Inter", color: Colors.white),
        bodyMedium:
            TextStyle(fontSize: 20, fontFamily: "Inter", color: Colors.white),
      ),
      cardTheme: CardTheme(
        color: darkPrimary,
        surfaceTintColor: null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        elevation: 24,
        margin: const EdgeInsets.symmetric(vertical: 65, horizontal: 24),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: darkPrimary,
        selectedItemColor: darkSecondary,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 33,
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )),
      colorScheme: ColorScheme.fromSeed(
        seedColor: darkPrimary,
        primary: darkPrimary,
        onPrimary: Colors.white,
        secondary: darkSecondary,
        onSecondary: Colors.black,
      ));
}

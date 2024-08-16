import 'package:flutter/material.dart';
import 'package:islami/UI/Home/home_screen.dart';
import 'package:islami/UI/Providers/theme_provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "Splash Screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = ThemeProvider.get(context);
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
    );
    return Scaffold(
      body: Image.asset(
        themeProvider.isDarkEnabled()
            ? "Assets/Images/splash_Dark.png"
            : "Assets/Images/splash.png",
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}

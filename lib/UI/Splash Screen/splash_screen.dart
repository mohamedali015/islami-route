import 'package:flutter/material.dart';
import 'package:islami/UI/Home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "Splash Screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
    );
    return Scaffold(
      body: Image.asset(
        "Assets/Images/splash.png",
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}

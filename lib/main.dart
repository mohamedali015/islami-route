import 'package:flutter/material.dart';
import 'package:islami/UI/Home/Quran/quran_details.dart';
import 'package:islami/UI/Home/home_screen.dart';
import 'package:islami/UI/Splash%20Screen/splash_screen.dart';
import 'package:islami/UI/Theme/mytheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Islami",
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        QuranDetails.routeName: (_) => QuranDetails(),
      },
      initialRoute: SplashScreen.routeName,
      theme: MyThemeData.lighttheme,
    );
  }
}

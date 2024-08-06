import 'package:flutter/material.dart';
import 'package:islami/UI/Theme/mytheme.dart';

class DefultScaffold extends StatelessWidget {
  Widget body;

  DefultScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    bool isDark = MyThemeData.isDark;
    return Stack(
      children: [
        Image.asset(
          isDark
              ? "Assets/Images/dark_main_background.png"
              : "Assets/Images/main_background.png",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        body,
      ],
    );
  }
}

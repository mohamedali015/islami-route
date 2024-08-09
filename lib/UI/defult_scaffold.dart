import 'package:flutter/material.dart';
import 'package:islami/UI/Providers/theme_provider.dart';
import 'package:provider/provider.dart';

class DefultScaffold extends StatelessWidget {
  Widget body;

  DefultScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    bool isDark = provider.isDarkEnabled();
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

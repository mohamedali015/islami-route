import 'package:flutter/material.dart';

class DefultScaffold extends StatelessWidget {
  Widget body;

  DefultScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("Assets/Images/main_background.png"),
        body,
      ],
    );
  }
}

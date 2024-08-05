import 'package:flutter/material.dart';

class VersesContent extends StatelessWidget {
  int index;
  String content;

  VersesContent({
    super.key,
    required this.content,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Text(
          "$content (${index + 1})",
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 25),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:islami/ui_utils.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.15),
          child: Image.asset(
            "Assets/Images/Radio header.png",
            width: size.width,
            height: size.height * 0.28,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.06),
          child: Center(
            child: Text(
              getTranslation(context).quranRadioStation,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.08),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    color: Theme.of(context).colorScheme.secondary,
                    iconSize: 50,
                    icon: const Icon(Icons.skip_previous),
                  ),
                  IconButton(
                    onPressed: () {},
                    color: Theme.of(context).colorScheme.secondary,
                    iconSize: 70,
                    icon: const Icon(Icons.play_arrow),
                  ),
                  IconButton(
                    onPressed: () {},
                    color: Theme.of(context).colorScheme.secondary,
                    iconSize: 50,
                    icon: const Icon(Icons.skip_next),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

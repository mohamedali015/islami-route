import 'package:flutter/material.dart';
import 'package:islami/ui_utils.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 144.0),
          child: Image.asset("Assets/Images/Radio header.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 42.0),
          child: Center(
            child: Text(
              getTranslation(context).quranRadioStation,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 44.0),
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

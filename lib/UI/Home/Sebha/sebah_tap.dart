import 'package:flutter/material.dart';
import 'package:islami/UI/Providers/theme_provider.dart';
import 'package:islami/ui_utils.dart';

class SebhaTap extends StatefulWidget {
  const SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int counter = 0;

  int index = 0;

  double rotate = 0;
  int taspehSize = 0;

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = ThemeProvider.get(context);

    List<String> taspeh = [
      getTranslation(context).sobhanAllah,
      getTranslation(context).elHamdleAllah,
      getTranslation(context).laIlahaIllaAllah,
      getTranslation(context).allahuAkbar,
    ];
    taspehSize = taspeh.length;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              themeProvider.isDarkEnabled()
                  ? Image.asset("Assets/Images/head of seb7a Dark.png")
                  : Image.asset("Assets/Images/head of seb7a.png"),
              Padding(
                padding: const EdgeInsets.only(top: 76.0),
                child: Transform.rotate(
                  angle: rotate,
                  child: GestureDetector(
                    onTap: () {
                      onTab();
                    },
                    child: themeProvider.isDarkEnabled()
                        ? Image.asset("Assets/Images/body of seb7a Dark.png")
                        : Image.asset("Assets/Images/body of seb7a.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Center(
              child: Text(
            getTranslation(context).numberOfTasabeh,
            style: Theme.of(context).textTheme.titleSmall,
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                "$counter",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            onTab();
          },
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  taspeh[index],
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  onTab() {
    rotate += 15;
    counter++;
    if (counter > 33) {
      counter = 0;
      index++;
    }
    if (index == taspehSize) {
      index = 0;
    }
    setState(() {});
  }
}

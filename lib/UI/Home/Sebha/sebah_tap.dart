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
    var size = MediaQuery.of(context).size;

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
          padding: EdgeInsets.only(top: size.height * 0.03),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              themeProvider.isDarkEnabled()
                  ? Image.asset("Assets/Images/head of seb7a Dark.png")
                  : Image.asset("Assets/Images/head of seb7a.png"),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.086),
                child: Transform.rotate(
                  angle: rotate,
                  child: GestureDetector(
                    onTap: () {
                      taspehOnTab();
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
          padding: EdgeInsets.only(top: size.height * 0.07),
          child: Center(
              child: Text(
            getTranslation(context).numberOfTasabeh,
            style: Theme.of(context).textTheme.titleSmall,
          )),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.03,
          ),
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.025,
                horizontal: size.width * 0.07,
              ),
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
            taspehOnTab();
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.01,
            ),
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.025,
                  horizontal: size.width * 0.07,
                ),
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

  taspehOnTab() {
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

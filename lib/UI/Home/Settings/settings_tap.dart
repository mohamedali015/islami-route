import 'package:flutter/material.dart';
import 'package:islami/UI/Home/Settings/theme_bottom_sheet.dart';
import 'package:islami/UI/Providers/locale_provider.dart';
import 'package:islami/UI/Providers/theme_provider.dart';
import 'package:islami/ui_utils.dart';

import 'language_bottom_sheet.dart';

class SettingsTap extends StatefulWidget {
  const SettingsTap({super.key});

  @override
  State<SettingsTap> createState() => _SettingsTapState();
}

class _SettingsTapState extends State<SettingsTap> {
  @override
  Widget build(BuildContext context) {
    var currentLocale = LocaleProvider.get(context);
    var currentTheme = ThemeProvider.get(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: 36,
        right: 12,
        left: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getTranslation(context).theme,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const Divider(
            height: 12,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).cardColor,
              ),
              child: Text(
                currentTheme.getCurrentTheme(context),
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
            ),
          ),
          const Divider(
            height: 24,
          ),
          Text(
            getTranslation(context).language,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const Divider(
            height: 12,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).cardColor,
              ),
              child: Text(
                currentLocale.getCurrentLocale(context),
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const ThemeBottomSheet();
      },
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const LanguageBottomSheet();
      },
    );
  }
}

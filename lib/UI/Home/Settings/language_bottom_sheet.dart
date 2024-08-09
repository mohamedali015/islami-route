import 'package:flutter/material.dart';
import 'package:islami/UI/Providers/locale_provider.dart';
import 'package:islami/ui_utils.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleProvider localeProvider = LocaleProvider.get(context);
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              localeProvider.changeLocale("en");
            },
            child: localeProvider.currentLocale == 'en'
                ? getSelectedItem(context, getTranslation(context).english)
                : getUnSelectedItem(context, getTranslation(context).english),
          ),
          const Divider(
            height: 24,
          ),
          InkWell(
            onTap: () {
              localeProvider.changeLocale("ar");
            },
            child: localeProvider.currentLocale == 'ar'
                ? getSelectedItem(context, getTranslation(context).arabic)
                : getUnSelectedItem(context, getTranslation(context).arabic),
          )
        ],
      ),
    );
  }

  getSelectedItem(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
          Icon(
            Icons.check,
            color: Theme.of(context).colorScheme.secondary,
          )
        ],
      ),
    );
  }

  getUnSelectedItem(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}

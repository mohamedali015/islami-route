import 'package:flutter/material.dart';
import 'package:islami/UI/Providers/theme_provider.dart';
import 'package:islami/ui_utils.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = ThemeProvider.get(context);
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                themeProvider.changeTheme(ThemeMode.light);
              });
            },
            child: themeProvider.isDarkEnabled()
                ? getUnSelectedItem(context, getTranslation(context).light)
                : getSelectedItem(context, getTranslation(context).light),
          ),
          const Divider(
            height: 24,
          ),
          InkWell(
            onTap: () {
              setState(() {
                themeProvider.changeTheme(ThemeMode.dark);
              });
            },
            child: themeProvider.isDarkEnabled()
                ? getSelectedItem(context, getTranslation(context).dark)
                : getUnSelectedItem(context, getTranslation(context).dark),
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

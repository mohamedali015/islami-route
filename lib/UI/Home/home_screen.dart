import 'package:flutter/material.dart';
import 'package:islami/UI/Home/Hadeth/hadeth_tap.dart';
import 'package:islami/UI/Home/Quran/quran_tap.dart';
import 'package:islami/UI/Home/Radio/radio_tap.dart';
import 'package:islami/UI/Home/Sebha/sebah_tap.dart';
import 'package:islami/UI/Home/bottom_nav_item.dart';
import 'package:islami/UI/defult_scaffold.dart';

import 'Settings/settings_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefultScaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Text(
            "Islami",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        body: taps[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNaviItem(
              imagepath: "Assets/Images/quran_icn.png",
              lable: "Quran",
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNaviItem(
              imagepath: "Assets/Images/hadeth.png",
              lable: "Hadeth",
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNaviItem(
              imagepath: "Assets/Images/sebha_blue.png",
              lable: "Sebha",
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNaviItem(
              imagepath: "Assets/Images/radio_blue.png",
              lable: "Radio",
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              backgroundColor: Theme.of(context).colorScheme.primary,
              label: "Settings",
            )
          ],
        ),
      ),
    );
  }

  var taps = [
    QuranTap(),
    const HadethTap(),
    const SebhaTap(),
    const RadioTap(),
    const SettingsTap()
  ];
}

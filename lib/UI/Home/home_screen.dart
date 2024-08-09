import 'package:flutter/material.dart';
import 'package:islami/UI/Home/Hadeth/hadeth_tap.dart';
import 'package:islami/UI/Home/Quran/quran_tap.dart';
import 'package:islami/UI/Home/Radio/radio_tap.dart';
import 'package:islami/UI/Home/Sebha/sebah_tap.dart';
import 'package:islami/UI/Home/bottom_nav_item.dart';
import 'package:islami/UI/Theme/mytheme.dart';
import 'package:islami/UI/defult_scaffold.dart';

import 'Settings/settings_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

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
          title: const Text("Islami"),
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
                imagepath: "Assets/Images/quran_icn.png", lable: "Quran"),
            BottomNaviItem(
                imagepath: "Assets/Images/hadeth.png", lable: "Hadeth"),
            BottomNaviItem(
                imagepath: "Assets/Images/sebha_blue.png", lable: "Sebha"),
            BottomNaviItem(
                imagepath: "Assets/Images/radio_blue.png", lable: "Radio"),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              backgroundColor: MyThemeData.lightPrimary,
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

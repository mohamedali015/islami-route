import 'package:flutter/material.dart';
import 'package:islami/UI/Theme/mytheme.dart';

class BottomNaviItem extends BottomNavigationBarItem {
  BottomNaviItem({required String imagepath, required String lable})
      : super(
          icon: ImageIcon(AssetImage(imagepath)),
          label: lable,
          backgroundColor: MyThemeData.lightPrimary,
        );
}

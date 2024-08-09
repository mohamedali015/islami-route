import 'package:flutter/material.dart';

class BottomNaviItem extends BottomNavigationBarItem {
  BottomNaviItem(
      {required String imagepath,
      required String lable,
      required Color backgroundColor})
      : super(
          icon: ImageIcon(AssetImage(imagepath)),
          label: lable,
          backgroundColor: backgroundColor,
        );
}

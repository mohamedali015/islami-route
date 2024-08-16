import 'package:flutter/material.dart';

class BottomNaviItem extends BottomNavigationBarItem {
  BottomNaviItem({
    String? imagepath,
    required String lable,
    required Color backgroundColor,
    Icon? mainIcon,
  }) : super(
          label: lable,
          icon: mainIcon ?? ImageIcon(AssetImage(imagepath!)),
          backgroundColor: backgroundColor,
        );
}

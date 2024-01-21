import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:e_commerce/ui/views/main_view/main_view_widgets/nav_item.dart';
import 'package:flutter/material.dart';

enum BottomNavigationEnum {
  HOME,
  FAVORITE,
  NOTIFICATIONS,
  SETTINGS,
}

class CostumBottomNavigationBar extends StatelessWidget {
  final BottomNavigationEnum selected;
  final Function(BottomNavigationEnum, int) onTap;
  const CostumBottomNavigationBar(
      {super.key, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavItem(
            icons: Icons.home_outlined,
            isSelected: selected == BottomNavigationEnum.HOME,
            onTap: () {
              onTap(BottomNavigationEnum.HOME, 0);
            },
          ),
          NavItem(
              icons: Icons.favorite_outline,
              isSelected: selected == BottomNavigationEnum.FAVORITE,
              onTap: () {
                onTap(BottomNavigationEnum.FAVORITE, 1);
              }),
          NavItem(
              icons: Icons.notifications_outlined,
              isSelected: selected == BottomNavigationEnum.NOTIFICATIONS,
              onTap: () {
                onTap(BottomNavigationEnum.NOTIFICATIONS, 2);
              }),
          NavItem(
              icons: Icons.settings_outlined,
              isSelected: selected == BottomNavigationEnum.SETTINGS,
              onTap: () {
                onTap(BottomNavigationEnum.SETTINGS, 3);
              }),
        ],
      ),
    );
  }
}
//android:requestLegacyExternalSharedPrfrenceRepository="true"

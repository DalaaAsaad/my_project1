import 'package:e_commerce/ui/views/main_view/main_view_widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mainViewController extends GetxController {
  PageController pageController = PageController();
  BottomNavigationEnum selectedView = BottomNavigationEnum.HOME;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void jumpToPage(BottomNavigationEnum selectEnum, int index) {
    pageController.jumpToPage(
      index,
    );
  }

  void openDrower() {
    scaffoldKey.currentState!.openDrawer();
  }
}

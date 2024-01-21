import 'package:e_commerce/ui/views/main_view/favorit_view/favorit_view.dart';
import 'package:e_commerce/ui/views/main_view/home_view/home_view.dart';
import 'package:e_commerce/ui/views/main_view/main_view_controller.dart';
import 'package:e_commerce/ui/views/main_view/main_view_widgets/bottom_navigation_bar.dart';
import 'package:e_commerce/ui/views/main_view/main_view_widgets/side_menu.dart';
import 'package:e_commerce/ui/views/main_view/notifications_view/notifications_view.dart';
import 'package:e_commerce/ui/views/main_view/settings_view/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  mainViewController controller = Get.put(mainViewController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: SideMenu(),
        key: controller.scaffoldKey,
        bottomNavigationBar: CostumBottomNavigationBar(
            selected: controller.selectedView,
            onTap: (selectEnum, index) {
              setState(() {
                controller.selectedView = selectEnum;
              });
              controller.jumpToPage(selectEnum, index);
            }),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller.pageController,
          children: [
            HomeView(
              openDrawer: () {
                controller.openDrower();
              },
            ),
            FavoritView(),
            NotificationsView(),
            SettingsView()
          ],
        ),
      ),
    );
  }
}

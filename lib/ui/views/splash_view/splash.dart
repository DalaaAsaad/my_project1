import 'package:e_commerce/core/data/repository/shared_prefrence_repository.dart';
import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';
import 'package:e_commerce/ui/views/intro_view/intro_view.dart';
import 'package:e_commerce/ui/views/landing_view/landing_view.dart';
import 'package:e_commerce/ui/views/main_view/main_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Get.to(SharedPrfrenceRepository().getFirstLunch()
          ? IntroView()
          : SharedPrfrenceRepository().getLoggedIn()
              ? MainView()
              : LandingView());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/pngs/main_background.png',
            width: screenWidth(0.5),
            fit: BoxFit.cover,
          ),
          Center(
            child: Image.asset(
              'assets/images/pngs/logo2.png',
              width: screenWidth(1.8),
            ),
          )
        ],
      ),
    ));
  }
}

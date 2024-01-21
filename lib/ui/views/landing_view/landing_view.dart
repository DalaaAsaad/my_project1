import 'package:e_commerce/ui/shared/shared_widget/costum_login.dart';
import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';
import 'package:e_commerce/ui/views/login/login.dart';
import 'package:e_commerce/ui/views/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
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
          Padding(
            padding: EdgeInsetsDirectional.only(
                top: screenWidth(7.68), start: screenWidth(4.8)),
            child: Image.asset(
              'assets/images/pngs/logo2.png',
              width: screenWidth(1.8),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
                top: screenWidth(0.66), start: screenWidth(8.5)),
            child: InkWell(
              onTap: () {
                Get.to(login());
              },
              child: CostumLogin(
                textContainer: 'log in',
                colorsContainer: colorstype.gradiant,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
                top: screenWidth(0.59), start: screenWidth(8.5)),
            child: InkWell(
              onTap: () {
                Get.to(Signup());
              },
              child: CostumLogin(
                  textContainer: 'sign up',
                  colorsContainer: colorstype.constcolor),
            ),
          )
        ],
      ),
    ));
  }
}

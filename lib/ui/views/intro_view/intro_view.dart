import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/core/data/repository/shared_prefrence_repository.dart';
import 'package:e_commerce/ui/shared/costum_widget/costum_text_wrong.dart';
import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';
import 'package:e_commerce/ui/views/landing_view/landing_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  @override
  void initState() {
    SharedPrfrenceRepository().setFirstLunch(false);
    super.initState();
  }

  List<String> background = ['City', 'map', 'City'];
  List<String> images = ['Bag', 'mobil', 'Truck'];
  List<String> descriptions = [
    'Life is a succession of lessons which must be lived to be understood.',
    'You come into the world with nothing, and the purpose of your life is to make something out of nothing.',
    'Life is what happens while you are busy making other plans.'
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: screenWidth(-4.11),
              right: screenWidth(-4.11),
              top: screenWidth(-12.7),
              child: Image.asset(
                'assets/images/pngs/Eaves.png',
              )),
          Padding(
            padding: EdgeInsetsDirectional.only(top: screenWidth(0.728)),
            child: Image.asset(
              'assets/images/pngs/BG.png',
            ),
          ),
          Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(2.055), start: screenWidth(13.7)),
              child: CostumTextWrong(
                text: descriptions[index],
                isuppercase: false,
                colorText: AppColor.black,
                fontSizeText: 17,
                fontWeightText: FontWeight.w400,
              )),
          Padding(
            padding: EdgeInsetsDirectional.only(top: screenWidth(1.22)),
            child: Image.asset(
              'assets/images/pngs/${background[index]}.png',
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
                top: screenWidth(1.15), start: screenWidth(4.11)),
            child: Image.asset(
              'assets/images/pngs/${images[index]}.png',
              width: 220,
            ),
          ),
          InkWell(
              onTap: () {
                if (index == descriptions.length - 1) {
                  Get.to(LandingView());
                } else {
                  setState(() {
                    index++;
                  });
                }
              },
              child: index == descriptions.length - 1
                  ? Padding(
                      padding: EdgeInsetsDirectional.only(
                          top: screenWidth(0.55), start: screenWidth(1.32)),
                      child: CostumTextWrong(
                        text: 'Finish ',
                        isuppercase: false,
                      ),
                    )
                  : Padding(
                      padding: EdgeInsetsDirectional.only(
                          top: screenWidth(0.55), start: screenWidth(1.22)),
                      child: CostumTextWrong(
                        text: 'Next',
                        isuppercase: false,
                      ),
                    )),
          InkWell(
            onTap: () {
              if (index != 0) {
                setState(() {
                  --index;
                });
              }
            },
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(0.55), start: screenWidth(41.1)),
              child: CostumTextWrong(text: 'Back', isuppercase: false),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
                top: screenWidth(0.58), start: screenWidth(2.41)),
            child: DotsIndicator(
              dotsCount: descriptions.length,
              position: index,
              decorator: DotsDecorator(activeColor: AppColor.blue6),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(LandingView());
            },
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(90), start: screenWidth(1.20)),
              child: CostumTextWrong(
                text: 'Skip',
                isuppercase: false,
                fontSizeText: 25,
              ),
            ),
          )
        ],
      ),
    ));
  }
}

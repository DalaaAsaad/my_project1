import 'package:e_commerce/ui/shared/costum_widget/custom_text.dart';
import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
      Image.asset(
        'assets/images/pngs/main_background.png',
        width: size.width / 0.5,
        fit: BoxFit.cover,
      ),
      Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColor.blue2WTR, AppColor.blue8WTR]),
        ),
      ),
      Padding(
        padding: EdgeInsetsDirectional.only(top: 50, start: 20, bottom: 30),
        child: CustomText(
          text: "Welcome to Pony,\n an e-commerce app!",
          textColor: AppColor.white,
          styleType: TextStyleType.CUSTOM,
          fontSize: 30,
        ),
      ),
      Padding(
        padding: EdgeInsetsDirectional.only(top: 150, start: 20, bottom: 30),
        child: CustomText(
          text:
              "There are also country specific classified online sites like usfreeads.com for United States.There are a number of agencies throughout the world that have made a business out of the classified advertising industry",
          textColor: AppColor.white,
          styleType: TextStyleType.CUSTOM,
          fontSize: 20,
        ),
      ),
      Padding(
          padding: EdgeInsetsDirectional.only(top: 350, start: 20, bottom: 30),
          child: Container(
            padding: EdgeInsetsDirectional.only(
                start: 25, top: 5, end: 25, bottom: 5),
            width: size.width / 1.1,
            height: size.width / 5,
            color: AppColor.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/pngs/Home.png", width: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Go to the Hope page",
                      styleType: TextStyleType.CUSTOM,
                      fontSize: 25,
                    ),
                    CustomText(
                      text: "Start to explore your shopping pradise",
                      styleType: TextStyleType.CUSTOM,
                      fontSize: 15,
                    ),
                  ],
                )
              ],
            ),
          )),
      Padding(
          padding: EdgeInsetsDirectional.only(top: 450, start: 20, bottom: 30),
          child: Container(
            padding: EdgeInsetsDirectional.only(
                start: 20, top: 5, end: 20, bottom: 5),
            width: size.width / 1.1,
            height: size.width / 5,
            color: AppColor.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/pngs/Search.png", width: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Search your products",
                      styleType: TextStyleType.CUSTOM,
                      fontSize: 25,
                    ),
                    CustomText(
                      text: "you can search what you need so quick",
                      styleType: TextStyleType.CUSTOM,
                      fontSize: 15,
                    ),
                  ],
                )
              ],
            ),
          )),
      Padding(
          padding: EdgeInsetsDirectional.only(top: 550, start: 20, bottom: 30),
          child: Container(
            padding: EdgeInsetsDirectional.only(
                start: 25, top: 5, end: 70, bottom: 5),
            width: size.width / 1.1,
            height: size.width / 5,
            color: AppColor.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/pngs/FAQ.png", width: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "You need to help ?",
                      styleType: TextStyleType.CUSTOM,
                      fontSize: 25,
                    ),
                    CustomText(
                      text: "Support team can help you 24/7",
                      styleType: TextStyleType.CUSTOM,
                      fontSize: 15,
                    ),
                  ],
                )
              ],
            ),
          )),
    ])));
  }
}

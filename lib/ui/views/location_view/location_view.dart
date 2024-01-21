import 'package:e_commerce/ui/shared/costum_widget/custom_text.dart';
import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';
import 'package:flutter/material.dart';

class locationView extends StatefulWidget {
  const locationView({super.key});

  @override
  State<locationView> createState() => _locationViewState();
}

class _locationViewState extends State<locationView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: 40, top: 100, end: 40, bottom: 150),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/pngs/locations.png", width: 280),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "TURN ON WITH LOCATION",
                    style: TextStyle(fontSize: 18, color: AppColor.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "To continuse,let your device turn on location, which uses Google's location service",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColor.black,
                    ),
                  ),
                ]),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(
                start: 10, end: 10, top: 10, bottom: 10),
            width: screenWidth(1.2),
            height: screenWidth(6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient:
                    LinearGradient(colors: [AppColor.blue2, AppColor.blue8])),
            child: Center(
              child: CustomText(
                styleType: TextStyleType.BODY,
                text: "DONE",
                textColor: AppColor.white,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "CANCEL",
            style: TextStyle(fontSize: 16, color: AppColor.black),
          ),
        ],
      ),
    ));
  }
}

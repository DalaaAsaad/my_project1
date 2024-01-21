import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:e_commerce/ui/shared/costum_widget/costum_text_wrong.dart';
import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';
import 'package:flutter/material.dart';

class BottonFacebook extends StatelessWidget {
  const BottonFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(1),
      height: screenWidth(6),
      decoration: BoxDecoration(
          color: AppColor.blue6,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), bottomLeft: Radius.circular(30))),
      child: Center(
          child: Padding(
        padding: EdgeInsetsDirectional.only(end: screenWidth(3.8)),
        child: CostumTextWrong(
            text: 'sign in with facebook ',
            fontSizeText: screenWidth(25),
            isuppercase: true),
      )),
    );
  }
}

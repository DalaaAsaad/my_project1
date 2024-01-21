import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:e_commerce/ui/shared/costum_widget/costum_text_wrong.dart';
import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';
import 'package:flutter/material.dart';

enum colorstype {
  gradiant,
  constcolor,
}

class CostumLogin extends StatelessWidget {
  final colorstype colorsContainer;
  final String textContainer;

  const CostumLogin({
    super.key,
    required this.textContainer,
    required this.colorsContainer,
  });

  @override
  Widget build(BuildContext context) {
    switch (colorsContainer) {
      case colorstype.gradiant:
        return Container(
          width: screenWidth(1.3),
          height: screenWidth(7),
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [AppColor.blue2, AppColor.blue8]),
              borderRadius: BorderRadius.circular(50)),
          child: Center(
              child: CostumTextWrong(
                  text: textContainer,
                  fontSizeText: screenWidth(19.2),
                  isuppercase: true)),
        );

      case colorstype.constcolor:
        return Container(
          width: screenWidth(1.3),
          height: screenWidth(7),
          decoration: BoxDecoration(
              color: AppColor.white, borderRadius: BorderRadius.circular(50)),
          child: Center(
              child: CostumTextWrong(
            text: textContainer,
            fontSizeText: screenWidth(19.2),
            isuppercase: true,
            colorText: AppColor.black,
          )),
        );
    }
  }
}

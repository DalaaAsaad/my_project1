import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum TextStyleType {
  TITLE,
  SUBTITLE,
  BODY,
  SMALL,
  CUSTOM,
}

class CustomText extends StatelessWidget {
  final String? text;
  final TextStyleType? styleType;
  final Color? textColor;

  final FontWeight? fontWeight;
  final double? fontSize;

  const CustomText({
    super.key,
    required this.text,
    this.styleType = TextStyleType.BODY,
    this.textColor = AppColor.black,
    this.fontWeight,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: getStyle(Get.size),
    );
  }

  TextStyle getStyle(Size size) {
    TextStyle result = TextStyle();

    switch (styleType) {
      case TextStyleType.TITLE:
        result = TextStyle(
            fontSize: screenWidth(15),
            fontWeight: fontWeight ?? FontWeight.bold,
            color: textColor);
        break;
      case TextStyleType.SUBTITLE:
        result = TextStyle(
            fontSize: screenWidth(24),
            fontWeight: fontWeight,
            color: textColor);
        break;
      case TextStyleType.BODY:
        result = TextStyle(
            fontSize: screenWidth(28),
            fontWeight: fontWeight,
            color: textColor);
        break;
      case TextStyleType.SMALL:
        result = TextStyle(
            fontSize: screenWidth(30),
            fontWeight: fontWeight,
            color: textColor);
        break;
      case TextStyleType.CUSTOM:
        result = TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor,
        );
        break;

      default:
        result = TextStyle(
            fontSize: screenWidth(28),
            fontWeight: FontWeight.normal,
            color: textColor);
        break;
    }

    return result;
  }
}

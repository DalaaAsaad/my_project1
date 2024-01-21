import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';
import 'package:flutter/material.dart';

enum TextStyleTypeWrong {
  TITLE,
  SUBTITLE,
  BODY,
  SMALL,
  CUSTOM,
}

class CostumTextWrong extends StatelessWidget {
  final String text;
  final bool isuppercase;
  final Color? colorText;
  final double? fontSizeText;
  final FontWeight? fontWeightText;
  const CostumTextWrong(
      {super.key,
      required this.text,
      this.colorText,
      this.fontSizeText,
      required this.isuppercase,
      this.fontWeightText});

  @override
  Widget build(BuildContext context) {
    return Text(
      isuppercase ? text.toUpperCase() : text,
      style: TextStyle(
        fontSize: fontSizeText ?? screenWidth(12),
        color: colorText ?? Colors.white,
        fontWeight: fontWeightText ?? FontWeight.w300,
      ),
    );
  }
}

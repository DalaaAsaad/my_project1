import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';
import 'package:flutter/material.dart';

class CostumTextfield extends StatelessWidget {
  final String textTextField;
  final TextEditingController? textfieldControler;
  final String? Function(String?)? validator;
  final bool obscureText;

  const CostumTextfield({
    super.key,
    required this.textTextField,
    this.textfieldControler,
    this.validator,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 2),
      child: TextFormField(
        obscureText: obscureText,
        validator: validator,
        controller: textfieldControler,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              vertical: screenWidth(15.36), horizontal: screenWidth(12.8)),
          fillColor: AppColor.grey7,
          filled: true,
          hintText: textTextField,
          hintStyle: TextStyle(
              color: AppColor.white,
              fontSize: screenWidth(24),
              fontWeight: FontWeight.w400),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              width: 1,
              color: AppColor.grey7,
            ),
          ),
        ),
      ),
    );
  }
}

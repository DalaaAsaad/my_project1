import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:e_commerce/ui/shared/shared_widget/botton_facebook.dart';
import 'package:e_commerce/ui/shared/costum_widget/costum_text_wrong.dart';
import 'package:e_commerce/ui/shared/costum_widget/costum_textfield.dart';
import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';
import 'package:e_commerce/ui/views/login/login.dart';
import 'package:e_commerce/ui/views/signup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

SignupController controller = Get.put(SignupController());

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(children: [
        Stack(
          children: [
            Image.asset(
              'assets/images/pngs/main_background.png',
              width: screenWidth(0.5),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(2.3), start: screenWidth(6.4)),
              child: InkWell(
                onTap: () {
                  Get.to(login());
                },
                child: CostumTextWrong(
                    text: 'log in',
                    fontSizeText: screenWidth(14),
                    isuppercase: true,
                    colorText: AppColor.white11),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(2.4), start: screenWidth(2.25)),
              child: CostumTextWrong(
                text: 'sign up',
                fontSizeText: screenWidth(14),
                isuppercase: true,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(1.52), start: screenWidth(6.9)),
              child: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    CostumTextfield(
                        textTextField: 'Username',
                        obscureText: false,
                        validator: (value) {
                          return controller.validatorUsername(value);
                        }),
                    CostumTextfield(
                      textTextField: 'Password',
                      obscureText: true,
                      validator: (value) {
                        return controller.validatorPassword(value);
                      },
                    ),
                    CostumTextfield(
                      textTextField: 'Confirm password',
                      obscureText: true,
                      validator: (value) {
                        return controller.validatorConfirmPassword(value);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(0.76), start: screenWidth(4.51)),
              child: InkWell(
                onTap: () {
                  controller.ConditionValidation();
                },
                child: CostumTextWrong(
                    text: 'sign up',
                    fontSizeText: screenWidth(20),
                    isuppercase: true),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(0.64), start: screenWidth(6.9)),
              child: BottonFacebook(),
            ),
          ],
        ),
      ]),
    ));
  }
}

import 'package:bot_toast/bot_toast.dart';
import 'package:e_commerce/core/data/repository/auth_repository.dart';
import 'package:e_commerce/core/translation/app_translation.dart';
import 'package:e_commerce/ui/shared/shared_widget/color.dart';
import 'package:e_commerce/ui/shared/shared_widget/botton_facebook.dart';
import 'package:e_commerce/ui/shared/costum_widget/costum_text_wrong.dart';
import 'package:e_commerce/ui/shared/costum_widget/costum_textfield.dart';
import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';
import 'package:e_commerce/ui/views/login/login_controller.dart';
import 'package:e_commerce/ui/views/main_view/main_view.dart';
import 'package:e_commerce/ui/views/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  LoginController controller = Get.put(LoginController());
  bool isLoading = false;

  @override
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
                  top: screenWidth(2.4), start: screenWidth(6.4)),
              child: CostumTextWrong(
                  text: tr("key_login"),
                  fontSizeText: screenWidth(14),
                  isuppercase: true),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(2.4), start: screenWidth(2.25)),
              child: InkWell(
                onTap: () {
                  Get.to(Signup());
                },
                child: CostumTextWrong(
                    text: tr('key_signup'),
                    fontSizeText: screenWidth(14),
                    isuppercase: true,
                    colorText: AppColor.white11),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(1.18), start: screenWidth(6.9)),
              child: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    CostumTextfield(
                      textTextField: tr("key_username"),
                      textfieldControler: controller.usernameControler,
                      validator: (value) {
                        return controller.validateUsername(value);
                      },
                      obscureText: false,
                    ),
                    CostumTextfield(
                      textTextField: tr("key_password"),
                      textfieldControler: controller.passwordControler,
                      validator: (value) {
                        return controller.validatePassword(value);
                      },
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsetsDirectional.only(
                    top: screenWidth(0.76), start: screenWidth(4.51)),
                child: Row(
                  children: [
                    isLoading
                        ? SpinKitSpinningLines(color: AppColor.white)
                        : InkWell(
                            onTap: () {
                              if (controller.formKey.currentState!.validate()) {
                                setState(() {
                                  isLoading = true;
                                });

                                AuthRepository()
                                    .login(
                                        username:
                                            controller.usernameControler.text,
                                        password:
                                            controller.passwordControler.text)
                                    .then((value) {
                                  setState(() {
                                    isLoading = false;
                                  });
                                  value.fold((l) {
                                    BotToast.showText(text: l);
                                  }, (r) {
                                    Get.to(MainView());
                                  });
                                });
                              }
                            },
                            child: CostumTextWrong(
                                text: tr("key_login_now"),
                                fontSizeText: screenWidth(20),
                                isuppercase: true),
                          ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: AppColor.white,
                          value: controller.isRemmber,
                          onChanged: (value) {
                            controller.isRemmber = value!;
                            setState(() {});
                          },
                        ),
                        Text(
                          "Remember me",
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColor.black,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                )),
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

import 'package:bot_toast/bot_toast.dart';
import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';
import 'package:e_commerce/ui/views/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  TextEditingController usernameControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String password = 'P@ssw0rd';
  String userName = 'User1@gmail.com';

  String? validatorUsername(String? value) {
    if (value!.isEmpty)
      return "please enter username";
    else if (!isEmailValid(value)) return "please enter valid username";
  }

  String? validatorPassword(String? value) {
    if (value!.isEmpty)
      return 'please enter password';
    else if (!isValidPassword(value)) return 'please enter valid password';
  }

  String? validatorConfirmPassword(String? value) {
    if (value!.isEmpty)
      return 'please enter password';
    else if (value != password) return 'please enter correct password';
  }

  void ConditionValidation() {
    if (formKey.currentState!.validate()) {
      if (usernameControler.text == userName &&
          passwordControler.text == password) {
        BotToast.showText(text: 'user is valid');
        Get.to(login());
      }
    }
  }
}

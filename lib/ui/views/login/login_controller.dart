import 'package:e_commerce/ui/shared/shared_widget/utiles.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/data/repository/shared_prefrence_repository.dart';

class LoginController extends GetxController {
  TextEditingController usernameControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String password = 'P@ssw0rd';
  String userName = 'User1@gmail.com';
  bool isLoading = false;
  bool isRemmber = false;
  @override
  void onInit() {
    if (SharedPrfrenceRepository().getLoggedInfo().isNotEmpty) {
      isRemmber = true;
      usernameControler.text = SharedPrfrenceRepository().getLoggedInfo()[0];
      passwordControler.text = SharedPrfrenceRepository().getLoggedInfo()[1];
      super.onInit();
    }
  }

  String? validateUsername(String? value) {
    if (value!.isEmpty) return "please enter username";
    // else if (!isEmailValid(value)) return "please enter valid username";
  }

  String? validatePassword(String? value) {
    if (value!.isEmpty) return "please enter password";
    // else if (!isValidPassword(value)) return "please enter valid password";
  }
}

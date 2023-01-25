import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/module/authentication/services/authentication_services.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  final eMailController = TextEditingController();
  final passwordController = TextEditingController();

  void loginUser(String email, String password) {
    AuthenticationServices.instance.loginUserWithEmailAndPassword(email, password);
  }
}

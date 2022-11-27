import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/authentication/services/authentication_services.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final eMailController = TextEditingController();
  final passwordController = TextEditingController();

  void registerUser(String email, String password) {
    AuthenticationServices.instance
        .createUserWithEmailAndPassword(email, password);
  }
}

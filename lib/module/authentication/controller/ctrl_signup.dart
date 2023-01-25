import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/module/authentication/services/authentication_services.dart';
import 'package:telecom_worker_manager_flutter/config/app_texts.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final eMailController = TextEditingController();
  final passwordController = TextEditingController();

  void registerUser(String email, String password, String firstName, String lastName) {
    AuthenticationServices.instance.createUserWithEmailAndPassword(email, password, firstName, lastName, TextConfig.tMemberRole);
  }
}

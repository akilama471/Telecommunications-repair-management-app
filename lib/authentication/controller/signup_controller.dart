import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/services/authentication_services.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final eMailController = TextEditingController();
  final branchController = TextEditingController();

  void registerUser(String email, String password) {}

  void phoneAuthentication(String phoneNo) {
    AuthenticationServices.instance.phoneAuthentication(phoneNo);
  }
}

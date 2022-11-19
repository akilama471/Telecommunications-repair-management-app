import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final eMailController = TextEditingController();
  final passwordController = TextEditingController();

  void registerUser(String email, String password) {}
}

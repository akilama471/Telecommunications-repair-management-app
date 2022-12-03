import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/module/authentication_module/view/signin_form.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(microseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(microseconds: 5000));
    Get.to(const SignInForm());
  }
}

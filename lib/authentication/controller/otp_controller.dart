import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/screens/main/dashboard.dart';
import 'package:telecom_worker_manager_flutter/services/authentication_services.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationServices.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const DashboardScreenPage()) : Get.back();
  }
}

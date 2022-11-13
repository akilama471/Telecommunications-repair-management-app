import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AuthenticationServices extends GetxController {
  static AuthenticationServices get instance => Get.find();

  final auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  Future<void> phoneAuthentication(String phoneNo) async {
    await auth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (credential) async {
          await auth.signInWithCredential(credential);
        },
        codeSent: (verificationId, resendToken) {
          this.verificationId.value = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          this.verificationId.value = verificationId;
        },
        verificationFailed: (e) {
          if (e.code == 'invalid-phone-number') {
            Get.snackbar('Error', 'The provided phone number is not valid');
          } else {
            Get.snackbar('Error', 'Something went wrong. Try again.');
          }
        });
  }

  Future<bool> verifyOTP(String otp) async {
    var credenrial = await auth.signInWithCredential(
        PhoneAuthProvider.credential(
            verificationId: verificationId.value, smsCode: otp));

    return credenrial.user != null ? true : false;
  }

  verifyCurrentUser(BuildContext context) {
    if (auth.currentUser == null) {
      Navigator.pushNamed(
        context,
        '/sign-in',
      );
    } else {
      Navigator.pushNamed(
        context,
        '/dashboard',
      );
    }
  }
}

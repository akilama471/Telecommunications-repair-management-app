import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/authentication/exceptions/sign_in_with_email_and_password_exceptions.dart';
import 'package:telecom_worker_manager_flutter/authentication/view/signin_form.dart';
import 'package:telecom_worker_manager_flutter/authentication/view/splash_screen_form.dart';
import 'package:telecom_worker_manager_flutter/screens/main/dashboard.dart';

class AuthenticationServices extends GetxController {
  static AuthenticationServices get instance => Get.find();

  final auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => SplashScreen())
        : Get.offAll(const DashboardScreenPage());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const DashboardScreenPage())
          : Get.to(const SignInForm());
    } on FirebaseAuthException catch (e) {
      final ex = SignInWithEmailAndPasswordFailure.code(e.code);
      throw ex;
    } catch (_) {
      const ex = SignInWithEmailAndPasswordFailure();
      throw ex;
    }
  }

  Future<void> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (_) {}
  }

  Future<void> logOut() async => await auth.signOut();
}

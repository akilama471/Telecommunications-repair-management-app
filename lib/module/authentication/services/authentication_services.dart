import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:telecom_worker_manager_flutter/module/admin/dashboard.dart';
import 'package:telecom_worker_manager_flutter/module/authentication/exceptions/sign_up_exceptions.dart';
import 'package:telecom_worker_manager_flutter/module/authentication/view/view_signin.dart';
import 'package:telecom_worker_manager_flutter/module/authentication/view/view_splash.dart';
import 'package:telecom_worker_manager_flutter/config/app_texts.dart';
import 'package:telecom_worker_manager_flutter/module/client/main.dart';

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
    user == null ? Get.offAll(() => SplashScreenView()) : aurhorizeAccess(user.uid);
  }

  Future<void> createUserWithEmailAndPassword(String email, String password, String firstName, String lastName, String userRole) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password).then((signedInUser) {
        // store user data
        storeNewUser(UserJsonModel(uid: auth.currentUser!.uid, firstName: firstName, lastName: lastName, email: email, userRole: userRole));
        //navigatioon
        firebaseUser.value != null ? aurhorizeAccess(auth.currentUser!.uid) : Get.offAll(const SignInScreenView());
      });
    } on FirebaseAuthException catch (e) {
      final ex = SignUpFailureModule().signupfailure(e.code);
      Fluttertoast.showToast(msg: ex.toString(), toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM, timeInSecForIosWeb: 1, backgroundColor: Colors.grey, textColor: Colors.black, fontSize: 12.0);
    } catch (ex) {
      Fluttertoast.showToast(msg: ex.toString(), toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM, timeInSecForIosWeb: 1, backgroundColor: Colors.grey, textColor: Colors.black, fontSize: 12.0);
    }
  }

  Future<void> loginUserWithEmailAndPassword(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (_) {}
  }

  Future<void> logOut() async => await auth.signOut();

  Future storeNewUser(UserJsonModel userModel) async {
    final dbUser = FirebaseFirestore.instance.collection("users").doc(auth.currentUser!.uid);
    try {
      await dbUser.set(userModel.toJson());
    } catch (ex) {
      Fluttertoast.showToast(msg: ex.toString(), toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM, timeInSecForIosWeb: 1, backgroundColor: Colors.grey, textColor: Colors.black, fontSize: 12.0);
    }
  }

  Future<void> aurhorizeAccess(String userUid) async {
    try {
      final dbAuthUser = FirebaseFirestore.instance.collection("users").doc(userUid);
      final snapshot = await dbAuthUser.get();
      if (snapshot.exists) {
        var userData = UserJsonModel.fromJson(snapshot.data()!);
        if (userData.userRole == TextConfig.tAdminRole) {
          Get.offAll(() => const AdminDashboardView());
        } else if (userData.userRole == TextConfig.tMemberRole) {
          Get.offAll(() => const ClientMainScreen());
        }
      }
    } catch (ex) {
      Fluttertoast.showToast(msg: ex.toString(), toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM, timeInSecForIosWeb: 1, backgroundColor: Colors.grey, textColor: Colors.black, fontSize: 12.0);
    }
  }
}

class UserJsonModel {
  final String? uid;
  final String firstName;
  final String lastName;
  final String email;
  final String userRole;

  UserJsonModel({required this.uid, required this.firstName, required this.lastName, required this.email, required this.userRole});

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'userRole': userRole,
    };
  }

  static UserJsonModel fromJson(Map<String, dynamic> json) => UserJsonModel(uid: json['uid'], firstName: json['firstName'], lastName: json['lastName'], email: json['email'], userRole: json['userRole']);
}

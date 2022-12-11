import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/module/authentication_module/components/footer_signup.dart';
import 'package:telecom_worker_manager_flutter/module/authentication_module/components/form_signup.dart';
import 'package:telecom_worker_manager_flutter/module/authentication_module/components/header_signup.dart';
import 'package:telecom_worker_manager_flutter/module/authentication_module/controller/ctrl_signin.dart';

class SignInScreenView extends StatelessWidget {
  const SignInScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController());
    final formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const HeaderSignUpComponents(),
              FormSignUpComponents(formKey: formKey, controller: controller),
              const FooterSignUpComponents(),
            ]),
          ),
        ),
      ),
    );
  }
}

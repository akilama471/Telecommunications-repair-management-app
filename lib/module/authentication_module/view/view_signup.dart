import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/module/authentication_module/components/footer_signin.dart';
import 'package:telecom_worker_manager_flutter/module/authentication_module/components/form_signin.dart';
import 'package:telecom_worker_manager_flutter/module/authentication_module/components/header_signin.dart';
import 'package:telecom_worker_manager_flutter/module/authentication_module/controller/ctrl_signup.dart';

class SignUpScreenView extends StatelessWidget {
  const SignUpScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const HeaderSignInComponents(),
              FormSignInComponents(formKey: formKey, controller: controller),
              const FooterSignInComponents()
            ]),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/module/authentication_module/components/login_footer_widget.dart';
import 'package:telecom_worker_manager_flutter/module/authentication_module/components/login_form_widget.dart';
import 'package:telecom_worker_manager_flutter/module/authentication_module/components/login_header_widget.dart';
import 'package:telecom_worker_manager_flutter/module/authentication_module/controller/signin_controller.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

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
              const LoginHeaderWidget(),
              LoginFormWiget(formKey: formKey, controller: controller),
              const LoginFotterWidget(),
            ]),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/addons/components/register_footer_widget.dart';
import 'package:telecom_worker_manager_flutter/addons/components/register_form_widget.dart';
import 'package:telecom_worker_manager_flutter/addons/components/register_header_widget.dart';
import 'package:telecom_worker_manager_flutter/authentication/controller/signup_controller.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const RegisterHeaderWidget(),
              RegisterFormWidget(formKey: formKey, controller: controller),
              const RegisterFotterWidget()
            ]),
          ),
        ),
      ),
    );
  }
}

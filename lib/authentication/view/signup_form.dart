import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/authentication/controller/signup_controller.dart';
import 'package:telecom_worker_manager_flutter/authentication/view/otp_form.dart';
import 'package:telecom_worker_manager_flutter/components/custom_widget/dls_text_form_field.dart';
import 'package:telecom_worker_manager_flutter/config/app_sizes.dart';
import 'package:telecom_worker_manager_flutter/config/app_texts.dart';

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
            child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // **********************//
                    // First Name Form Field //
                    // **********************//
                    DlsTextFormFieldWidget(
                      ctrl: controller.firstNameController,
                      inputType: TextInputType.text,
                      labelText: TextConfig.tFname,
                      hintText: TextConfig.tFname,
                      textSize: 14,
                      prefixIcon: Icons.person,
                      prefixIconSize: 22,
                    ),
                    const SizedBox(height: SizeConfig.tFormHeight - 20),
                    // **********************//
                    // Last Name Form Field //
                    // **********************//
                    DlsTextFormFieldWidget(
                      ctrl: controller.lastNameController,
                      inputType: TextInputType.text,
                      labelText: TextConfig.tLname,
                      hintText: TextConfig.tLname,
                      textSize: 14,
                      prefixIcon: Icons.person,
                      prefixIconSize: 22,
                    ),
                    const SizedBox(height: SizeConfig.tFormHeight - 20),
                    // ************************//
                    // Phone Number Form Field //
                    // ************************//
                    DlsTextFormFieldWidget(
                      ctrl: controller.phoneNumberController,
                      inputType: TextInputType.phone,
                      labelText: TextConfig.tPhone,
                      hintText: TextConfig.tPhone,
                      textSize: 14,
                      prefixIcon: Icons.phone,
                      prefixIconSize: 22,
                    ),
                    const SizedBox(height: SizeConfig.tFormHeight - 20),
                    // *************************//
                    // Email Address Form Field //
                    // *************************//
                    DlsTextFormFieldWidget(
                      ctrl: controller.eMailController,
                      inputType: TextInputType.emailAddress,
                      labelText: TextConfig.tEmail,
                      hintText: TextConfig.tEmail,
                      textSize: 14,
                      prefixIcon: Icons.mail,
                      prefixIconSize: 22,
                    ),
                    const SizedBox(height: SizeConfig.tFormHeight - 20),
                    // ******************************//
                    // Form Submit Button Form Field //
                    // ******************************//
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              SignUpController.instance.phoneAuthentication(
                                  controller.phoneNumberController.text.trim());
                              Get.to(const OTPForm());
                            }
                          },
                          child: Text(TextConfig.tSignUp.toUpperCase()),
                        )),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

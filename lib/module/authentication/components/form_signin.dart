import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/widgets/dls_password_form_field.dart';
import 'package:telecom_worker_manager_flutter/widgets/dls_text_form_field.dart';
import 'package:telecom_worker_manager_flutter/module/authentication/controller/ctrl_signup.dart';
import 'package:telecom_worker_manager_flutter/config/app_sizes.dart';
import 'package:telecom_worker_manager_flutter/config/app_texts.dart';

class FormSignInComponents extends StatelessWidget {
  const FormSignInComponents({
    Key? key,
    required this.formKey,
    required this.controller,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final SignUpController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: SizeConfig.tFormHeight - 10),
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
              const SizedBox(height: SizeConfig.tFormHeight - 20), // ************************//
              // Phone Number Form Field //
              // ************************//
              DlsPassFormFieldWidget(
                ctrl: controller.passwordController,
                inputType: TextInputType.name,
                labelText: TextConfig.tPassword,
                hintText: TextConfig.tPassword,
                textSize: 14,
                prefixIcon: Icons.fingerprint,
                prefixIconSize: 22,
                suffixAction: () {},
                suffixIconShow: Icons.visibility,
                suffixIconHide: Icons.visibility_off,
                textInputAction: TextInputAction.done,
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
                        SignUpController.instance.registerUser(
                          controller.eMailController.text.trim(),
                          controller.passwordController.text.trim(),
                          controller.firstNameController.text.trim(),
                          controller.lastNameController.text.trim(),
                        );
                      }
                    },
                    child: Text(TextConfig.tSignUp.toUpperCase()),
                  )),
            ],
          )),
    );
  }
}

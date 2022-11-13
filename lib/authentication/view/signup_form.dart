import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/authentication/controller/signup_controller.dart';
import 'package:telecom_worker_manager_flutter/authentication/view/otp_form.dart';
import 'package:telecom_worker_manager_flutter/config/app_sizes.dart';
import 'package:telecom_worker_manager_flutter/config/app_texts.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();

    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: SizeConfig.tFormHeight - 10),
      child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // **********************//
              // First Name Form Field //
              // **********************//
              TextFormField(
                controller: controller.firstNameController,
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    prefixIcon: Icon(
                      Icons.person,
                      size: 22,
                    ),
                    labelText: TextConfig.tFname,
                    hintText: TextConfig.tFname,
                    border: OutlineInputBorder()),
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: SizeConfig.tFormHeight - 20),
              // **********************//
              // Last Name Form Field //
              // **********************//
              TextFormField(
                controller: controller.lastNameController,
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    prefixIcon: Icon(
                      Icons.person,
                      size: 22,
                    ),
                    labelText: TextConfig.tLname,
                    hintText: TextConfig.tLname,
                    border: OutlineInputBorder()),
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: SizeConfig.tFormHeight - 20),
              // ************************//
              // Phone Number Form Field //
              // ************************//
              TextFormField(
                controller: controller.phoneNumberController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    prefixIcon: Icon(
                      Icons.phone,
                      size: 22,
                    ),
                    labelText: TextConfig.tPhone,
                    hintText: TextConfig.tPhone,
                    border: OutlineInputBorder()),
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: SizeConfig.tFormHeight - 20),
              // *************************//
              // Email Address Form Field //
              // *************************//
              TextFormField(
                controller: controller.eMailController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    prefixIcon: Icon(
                      Icons.email,
                      size: 22,
                    ),
                    labelText: TextConfig.tEmail,
                    hintText: TextConfig.tEmail,
                    border: OutlineInputBorder()),
                style: const TextStyle(fontSize: 14),
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/authentication/view/signup_form.dart';
import 'package:telecom_worker_manager_flutter/components/custom_widget/dls_social_form_field.dart';
import 'package:telecom_worker_manager_flutter/config/app_assests.dart';
import 'package:telecom_worker_manager_flutter/config/app_sizes.dart';
import 'package:telecom_worker_manager_flutter/config/app_texts.dart';

class LoginFotterWidget extends StatelessWidget {
  const LoginFotterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: SizeConfig.tFormHeight - 20),
        // ***************************=****//
        // Phone Sign In Button Form Field //
        // ********************************//
        DlsSocialFormFieldWidget(
            width: double.infinity,
            icon: const Icon(
              Icons.phone,
              color: Colors.white,
            ),
            onPressed: () {},
            title: TextConfig.tPhoneTitle),

        const SizedBox(height: SizeConfig.tFormHeight - 30),
        // *********************************//
        // Google Sign In Button Form Field //
        // *********************************//
        DlsSocialFormFieldWidget(
            width: double.infinity,
            icon: const Image(
              image: AssetImage(AssetStore.googleLogo),
              width: 20.0,
            ),
            onPressed: () {},
            title: TextConfig.tGoogleTitle),

        const SizedBox(height: SizeConfig.tFormHeight - 20),
        // ************************************//
        // Dont have account Button Form Field //
        // ************************************//
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              Get.to(() => const SignUpForm());
            },
            child: Text.rich(TextSpan(
                text: TextConfig.tDontHaveAcc,
                style: Theme.of(context).textTheme.bodyText1,
                children: const [
                  TextSpan(
                      text: TextConfig.tSignUp,
                      style: TextStyle(color: Colors.blue))
                ])))
      ],
    );
  }
}

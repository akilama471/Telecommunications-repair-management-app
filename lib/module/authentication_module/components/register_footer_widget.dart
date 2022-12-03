import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/module/authentication_module/view/signin_form.dart';
import 'package:telecom_worker_manager_flutter/widgets/dls_social_form_field.dart';
import 'package:telecom_worker_manager_flutter/config/app_assests.dart';
import 'package:telecom_worker_manager_flutter/config/app_sizes.dart';
import 'package:telecom_worker_manager_flutter/config/app_texts.dart';

class RegisterFotterWidget extends StatelessWidget {
  const RegisterFotterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: SizeConfig.tFormHeight - 20),
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
              Get.to(() => const SignInForm());
            },
            child: Text.rich(TextSpan(text: TextConfig.tAlReadyHaveAcc, style: Theme.of(context).textTheme.bodyText1, children: const [
              TextSpan(text: TextConfig.tSignIn, style: TextStyle(color: Colors.blue))
            ])))
      ],
    );
  }
}

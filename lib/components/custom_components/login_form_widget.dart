import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/components/custom_widget/dls_forget_password_button_widget.dart';
import 'package:telecom_worker_manager_flutter/components/custom_widget/dls_text_form_field.dart';
import 'package:telecom_worker_manager_flutter/config/app_sizes.dart';
import 'package:telecom_worker_manager_flutter/config/app_texts.dart';

class LoginFormWiget extends StatelessWidget {
  const LoginFormWiget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding:
          const EdgeInsets.symmetric(vertical: SizeConfig.tFormHeight - 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // *************************//
          // Email Address Form Field //
          // *************************//
          const DlsTextFormFieldWidget(
            inputType: TextInputType.emailAddress,
            labelText: TextConfig.tEmail,
            hintText: TextConfig.tEmail,
            textSize: 14,
            prefixIcon: Icons.email,
            prefixIconSize: 22,
          ),
          const SizedBox(height: SizeConfig.tFormHeight - 25),
          // ********************//
          // Password Form Field //
          // ********************//
          DlsTextFormFieldWidget(
              inputType: TextInputType.name,
              labelText: TextConfig.tPassword,
              hintText: TextConfig.tPassword,
              textSize: 14,
              prefixIcon: Icons.fingerprint,
              prefixIconSize: 22,
              suffixAction: () {},
              suffixIconShow: Icons.visibility,
              suffixIconHide: Icons.visibility_off),
          const SizedBox(height: SizeConfig.tFormHeight - 25),
          // ***************************//
          // Forget Password Form Field //
          // ***************************//
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    builder: (context) => Container(
                          padding:
                              const EdgeInsets.all(SizeConfig.tDefaultSize),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                TextConfig.tForgetPasswordTitle,
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              Text(
                                TextConfig.tForgetPasswordSubTitle,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              DlsForgetPasswordBtnWidget(
                                btnIcon: Icons.mail_outline_rounded,
                                btnTitle: TextConfig.tResetViaTitle,
                                btnSubTitle: TextConfig.tResetViaEmailTitle,
                                onTap: () {},
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              DlsForgetPasswordBtnWidget(
                                btnIcon: Icons.mobile_friendly_rounded,
                                btnTitle: TextConfig.tResetViaTitle,
                                btnSubTitle: TextConfig.tResetViaMobileTitle,
                                onTap: () {},
                              ),
                            ],
                          ),
                        ));
              },
              child: const Text(TextConfig.tForgetPassword),
            ),
          ),
          // **************************//
          // Sign In Button Form Field //
          // **************************//
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: const Text(TextConfig.tSignIn)),
          ),
          const SizedBox(height: SizeConfig.tFormHeight - 20),
        ],
      ),
    ));
  }
}

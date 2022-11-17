import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/components/custom_components/login_footer_widget.dart';
import 'package:telecom_worker_manager_flutter/components/custom_components/login_form_widget.dart';
import 'package:telecom_worker_manager_flutter/components/custom_components/login_header_widget.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  LoginHeaderWidget(),
                  LoginFormWiget(),
                  LoginFotterWidget(),
                ]),
          ),
        ),
      ),
    );
  }
}

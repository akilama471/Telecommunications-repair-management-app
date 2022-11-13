import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telecom_worker_manager_flutter/authentication/controller/otp_controller.dart';
import 'package:telecom_worker_manager_flutter/config/app_sizes.dart';
import 'package:telecom_worker_manager_flutter/config/app_texts.dart';

class OTPForm extends StatelessWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var otp;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(SizeConfig.tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              TextConfig.tOtp,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 80.0),
            ),
            Text(
              'OTP Code',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              " developer.akila5@gmail.com",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            OtpTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code) {
                  otp = code;
                  OTPController.instance.verifyOTP(otp);
                }),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  OTPController.instance.verifyOTP(otp);
                },
                child: const Text(TextConfig.tNext))
          ],
        ),
      ),
    );
  }
}

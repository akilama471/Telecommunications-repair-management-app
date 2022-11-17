import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/authentication/controller/splash_screen_controller.dart';
import 'package:telecom_worker_manager_flutter/config/app_assests.dart';
import 'package:telecom_worker_manager_flutter/config/app_sizes.dart';
import 'package:telecom_worker_manager_flutter/config/app_texts.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashScreenController.startAnimation();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Obx(
              () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  top: splashScreenController.animate.value ? 0 : -30,
                  left: splashScreenController.animate.value ? 0 : -30,
                  child: const Image(
                    image: AssetImage(AssetStore.splashIconTop),
                  )),
            ),
            Obx(
              () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  top: 150,
                  left: splashScreenController.animate.value
                      ? SizeConfig.tDefaultSize
                      : -80,
                  child: Obx(
                    () => AnimatedOpacity(
                      duration: const Duration(milliseconds: 1600),
                      opacity: splashScreenController.animate.value ? 1 : 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            TextConfig.tAppName,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Text(
                            TextConfig.tAppTagLine1,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
            Obx(
              () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  bottom: splashScreenController.animate.value ? 100 : -30,
                  left: 80,
                  child: const Image(
                    image: AssetImage(AssetStore.splashIconMiddle),
                    width: 250,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

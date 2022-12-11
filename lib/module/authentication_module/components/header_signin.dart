import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/config/app_assests.dart';
import 'package:telecom_worker_manager_flutter/config/app_sizes.dart';
import 'package:telecom_worker_manager_flutter/config/app_texts.dart';

class HeaderSignInComponents extends StatelessWidget {
  const HeaderSignInComponents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: const AssetImage(AssetStore.authHeader),
          height: MediaQuery.of(context).size.height * 0.2,
        ),
        const SizedBox(height: SizeConfig.tFormHeight - 20),
        Text(
          TextConfig.tLoginTitle,
          style: Theme.of(context).textTheme.headline1,
        ),
      ],
    );
  }
}

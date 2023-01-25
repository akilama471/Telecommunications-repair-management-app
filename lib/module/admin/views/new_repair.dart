import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/config/app_assests.dart';
import 'package:telecom_worker_manager_flutter/module/admin/components/form_text.dart';

class NewRepairView extends StatefulWidget {
  const NewRepairView({super.key});
  @override
  State<NewRepairView> createState() => _NewRepairViewState();
}

class _NewRepairViewState extends State<NewRepairView> {
  @override
  Widget build(BuildContext context) => SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    child: Image.asset(AssetStore.taskHeader, width: double.infinity, fit: BoxFit.fitWidth),
                  ),
                  Padding(padding: const EdgeInsets.all(8.0), child: Column(children: const [])),
                  Form(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        // connection number , connection type, MDF , TID TAG
                        // dp number , Loop Number
                        // fault Type[OverHead , UG , Internal],
                        FormTextWidget(inputType: TextInputType.number, labelText: "Connection Number", hintText: "Connection Number", maxLength: 10, prefixIcon: Icons.phone, textInputAction: TextInputAction.next),
                        FormTextWidget(inputType: TextInputType.number, labelText: "Connection Number", hintText: "Connection Number", maxLength: 10, prefixIcon: Icons.phone, textInputAction: TextInputAction.next),
                        FormTextWidget(inputType: TextInputType.number, labelText: "Connection Number", hintText: "Connection Number", maxLength: 10, prefixIcon: Icons.phone, textInputAction: TextInputAction.next)
                      ],
                    ),
                  ))
                ],
              ))));
}

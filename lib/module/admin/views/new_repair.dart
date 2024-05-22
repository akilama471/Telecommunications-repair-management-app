import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/config/app_assests.dart';
import 'package:telecom_worker_manager_flutter/module/admin/components/form_text.dart';

class NewRepairView extends StatefulWidget {
  const NewRepairView({super.key});
  @override
  State<NewRepairView> createState() => _NewRepairViewState();
}

class _NewRepairViewState extends State<NewRepairView> {
  String _dropdownValue = "fiber";
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
                      children: [
                        // connection number , connection type, MDF , TID TAG
                        // dp number , Loop Number
                        // fault Type[OverHead , UG , Internal],
                        const FormTextWidget(inputType: TextInputType.number, labelText: "Connection Number", hintText: "Enter Connection Number Here", maxLength: 10, prefixIcon: Icons.phone, textInputAction: TextInputAction.next),
                        DropdownButton(
                          items: const [
                            DropdownMenuItem(
                              value: "fiber",
                              child: Text("Fiber"),
                            ),
                            DropdownMenuItem(
                              value: "adsl",
                              child: Text("ADSL"),
                            )
                          ],
                          value: _dropdownValue,
                          onChanged: dropdownCallback,
                        ),
                        const FormTextWidget(inputType: TextInputType.number, labelText: "DP Number", hintText: "Enter DP Number Here", maxLength: 10, prefixIcon: Icons.phone, textInputAction: TextInputAction.next),
                        const FormTextWidget(inputType: TextInputType.number, labelText: "Loop Number", hintText: "Enter Loop Number Here", maxLength: 10, prefixIcon: Icons.phone, textInputAction: TextInputAction.next)
                      ],
                    ),
                  ))
                ],
              ))));

  dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropdownValue = selectedValue;
      });
    }
  }
}

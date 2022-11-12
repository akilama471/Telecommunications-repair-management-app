import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/components/dls_popup_menu_button.dart';
import 'package:telecom_worker_manager_flutter/components/dls_textfield.dart';
import 'package:telecom_worker_manager_flutter/config/app_assests.dart';

class AddTaskView extends StatefulWidget {
  static const String routeName = '/add-task';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const AddTaskView());
  }

  const AddTaskView({super.key});
  @override
  State<AddTaskView> createState() => _AddTaskViewState();
}

class _AddTaskViewState extends State<AddTaskView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  child: Image.asset(AssetStore.taskHeader,
                      width: double.infinity, fit: BoxFit.fitWidth),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: const [
                      DlsTextfield(
                          title: 'Connection Number',
                          hint: 'Connection Number',
                          icon: Icons.input,
                          type: TextInputType.number,
                          isMask: false),
                      DlsPopupMenuButton(
                        title: "Select MDF",
                        icon: Icons.apps,
                      ),
                      DlsTextfield(
                          title: 'TID Number',
                          hint: 'TID Number',
                          icon: Icons.input,
                          type: TextInputType.name,
                          isMask: false),
                      DlsTextfield(
                          title: 'DP Number',
                          hint: 'DP Number',
                          icon: Icons.input,
                          type: TextInputType.name,
                          isMask: false),
                      DlsTextfield(
                          title: 'DP Loop Number', // 1,2,3,4,5,6,7,8,9,10
                          hint: 'DP Loop Number',
                          icon: Icons.input,
                          type: TextInputType.name,
                          isMask: false),
                      DlsTextfield(
                          title: 'Fualt Type',
                          hint: 'Fualt Type',
                          icon: Icons.input,
                          type: TextInputType.name,
                          isMask: false),
                      DlsTextfield(
                          title: 'Customer Name',
                          hint: 'Customer Name',
                          icon: Icons.input,
                          type: TextInputType.name,
                          isMask: false),
                      DlsTextfield(
                          title: 'Customer Contact Number',
                          hint: 'Customer Contact Number',
                          icon: Icons.input,
                          type: TextInputType.name,
                          isMask: false),
                      DlsTextfield(
                          title: 'Customer Address',
                          hint: 'Customer Address',
                          icon: Icons.input,
                          type: TextInputType.name,
                          isMask: false),
                      DlsTextfield(
                          title: 'Task Note',
                          hint: 'Task Note',
                          icon: Icons.input,
                          type: TextInputType.name,
                          isMask: false),
                      DlsTextfield(
                          title: 'Task Status',
                          hint: 'Task Status',
                          icon: Icons.input,
                          type: TextInputType.name,
                          isMask: false),
                    ])),
              ],
            )));
  }
}

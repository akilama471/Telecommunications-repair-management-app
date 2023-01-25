import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/config/app_assests.dart';
import 'package:telecom_worker_manager_flutter/module/client/components/add_task_form.dart';

class AddTaskView extends StatefulWidget {
  const AddTaskView({super.key});
  @override
  State<AddTaskView> createState() => _AddTaskViewState();
}

class _AddTaskViewState extends State<AddTaskView> {
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
                  const AddTaskForm()
                ],
              ))));
}

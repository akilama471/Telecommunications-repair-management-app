import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telecom_worker_manager_flutter/module/tasks/add_task.dart';

class TaskTaskScreenPageView extends StatefulWidget {
  const TaskTaskScreenPageView({super.key});
  @override
  State<TaskTaskScreenPageView> createState() => _TaskTaskScreenPageViewState();
}

class _TaskTaskScreenPageViewState extends State<TaskTaskScreenPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _top(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const AddTaskView());
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}

_top() {
  return Container(
    padding: const EdgeInsets.all(16.0),
    decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        )),
    child: Column(children: <Widget>[
      TextField(
        decoration: InputDecoration(
            hintText: "Search Task",
            fillColor: Colors.white,
            filled: true,
            suffixIcon: const Icon(Icons.filter_list),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(color: Colors.transparent)),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0)),
      )
    ]),
  );
}

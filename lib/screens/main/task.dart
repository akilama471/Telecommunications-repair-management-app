import 'package:flutter/material.dart';

class TaskScreenPage extends StatefulWidget {
  const TaskScreenPage({super.key});
  @override
  State<TaskScreenPage> createState() => _TaskScreenPageState();
}

class _TaskScreenPageState extends State<TaskScreenPage> {
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
          Navigator.pushNamed(
            context,
            '/add-task',
          );
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

import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/screens/main/dashboard.dart';
import 'package:telecom_worker_manager_flutter/screens/main/history.dart';
import 'package:telecom_worker_manager_flutter/screens/main/setting.dart';
import 'package:telecom_worker_manager_flutter/screens/main/task.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int cindex = 0;

  PageController pageControler = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageControler,
        onPageChanged: (newIndex) {
          setState(() {
            cindex = newIndex;
          });
        },
        children: const [
          DashboardScreenPage(),
          TaskScreenPage(),
          HistoryScreenPage(),
          SettingScreenPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: cindex,
          onTap: (index) {
            pageControler.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease);
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.apps),
                label: "Dashboard",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.task),
                label: "Task",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: "History",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
                backgroundColor: Colors.blue),
          ]),
    );
  }
}

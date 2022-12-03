import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/module/client_module/pv_customer.dart';
import 'package:telecom_worker_manager_flutter/module/client_module/pv_dashboard.dart';
import 'package:telecom_worker_manager_flutter/module/client_module/pv_setting.dart';
import 'package:telecom_worker_manager_flutter/module/client_module/pv_task.dart';

class ClientMainScreen extends StatefulWidget {
  const ClientMainScreen({super.key});

  @override
  State<ClientMainScreen> createState() => _ClientMainScreenState();
}

class _ClientMainScreenState extends State<ClientMainScreen> {
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
          DashboardScreenPageView(),
          TaskTaskScreenPageView(),
          CustomerScreenPageView(),
          SettingScreenPageView()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: cindex,
          onTap: (index) {
            pageControler.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.ease);
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Dashboard", backgroundColor: Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.task), label: "Task", backgroundColor: Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: "History", backgroundColor: Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings", backgroundColor: Colors.blue),
          ]),
    );
  }
}

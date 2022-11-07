import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/admins/admin_screen.dart';
import 'package:telecom_worker_manager_flutter/screens/dashboard_screen_page.dart';
import 'package:telecom_worker_manager_flutter/screens/history_screen_page.dart';
import 'package:telecom_worker_manager_flutter/screens/setting_screen_page.dart';
import 'package:telecom_worker_manager_flutter/screens/task_screen_page.dart';
import 'package:telecom_worker_manager_flutter/views/add_task.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/dashboard':
        return DashboardScreenPage.route();
      case '/task':
        return TaskScreenPage.route();
      case '/add-task':
        return AddTaskView.route();
      case '/history':
        return HistoryScreenPage.route();
      case '/setting':
        return SettingScreenPage.route();
      case '/admin-page':
        return AdminScreenPage.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (context) => Scaffold(
              appBar: AppBar(title: const Text('Error')),
            ));
  }
}

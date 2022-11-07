import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/components/dls_top_details_row.dart';

class DashboardScreenPage extends StatefulWidget {
  static const String routeName = '/dashboard';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const DashboardScreenPage());
  }

  const DashboardScreenPage({super.key});
  @override
  State<DashboardScreenPage> createState() => _DashboardScreenPageState();
}

class _DashboardScreenPageState extends State<DashboardScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          const DlsTopDetailsRow(),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text("Action",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22.0)),
                  Text(
                    "View All",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
                  )
                ]),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 150.0,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 3 / 2),
              children: <Widget>[
                _gridItem(Icons.add_task, "New Task"),
                _gridItem(Icons.add_task, "New Customer"),
                _gridItem(Icons.add_task, "New Connection"),
                _gridItem(Icons.apps, "Apps"),
                _gridItem(Icons.apps, "Apps"),
                _gridItem(Icons.apps, "Apps"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(17),
            child: Row(children: const <Widget>[
              Text(
                "Latest Update",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              )
            ]),
          ),
        ],
      ),
    );
  }
}

_gridItem(icon, title) {
  return Column(
    children: <Widget>[
      CircleAvatar(
        backgroundColor: Colors.blue.withOpacity(0.9),
        child: Icon(
          icon,
          size: 16.0,
          color: Colors.white,
        ),
      ),
      const SizedBox(
        height: 10.0,
      ),
      Text(title, style: const TextStyle(fontSize: 11.0)),
    ],
  );
}

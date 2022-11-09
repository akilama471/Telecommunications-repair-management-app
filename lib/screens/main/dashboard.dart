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
  Future<bool> _onWillPop(BuildContext context) async {
    bool? exitResualt = await _showExitBottomSheet(context);
    return exitResualt ?? false;
  }

  Future<bool?> _showExitBottomSheet(BuildContext context) async {
    return await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: _buildBottomSheet(context),
        );
      },
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          'Do you really want to exit the app?',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                ),
              ),
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('CANCEL'),
            ),
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                ),
              ),
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('YES, EXIT'),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () => _onWillPop(context),
        child: Scaffold(
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.0),
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
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  )
                ]),
              ),
            ],
          ),
        ),
      );
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

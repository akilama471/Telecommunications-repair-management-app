import 'package:flutter/material.dart';

class AdminScreenPage extends StatefulWidget {
  static const String routeName = '/admin-page';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const AdminScreenPage());
  }

  const AdminScreenPage({super.key});
  @override
  State<AdminScreenPage> createState() => _AdminScreenPageState();
}

class _AdminScreenPageState extends State<AdminScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

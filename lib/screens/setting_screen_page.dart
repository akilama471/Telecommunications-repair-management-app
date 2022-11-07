import 'package:flutter/material.dart';

class SettingScreenPage extends StatefulWidget {
  static const String routeName = '/setting';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const SettingScreenPage());
  }

  const SettingScreenPage({super.key});
  @override
  State<SettingScreenPage> createState() => _SettingScreenPageState();
}

class _SettingScreenPageState extends State<SettingScreenPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

import 'package:flutter/material.dart';

class HistoryScreenPage extends StatefulWidget {
  static const String routeName = '/history';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const HistoryScreenPage());
  }

  const HistoryScreenPage({super.key});
  @override
  State<HistoryScreenPage> createState() => _HistoryScreenPageState();
}

class _HistoryScreenPageState extends State<HistoryScreenPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

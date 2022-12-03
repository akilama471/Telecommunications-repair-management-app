import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telecom_worker_manager_flutter/module/admin_module/components/admin_side_navigation_drawer.dart';

class AdminScreenPage extends StatelessWidget {
  const AdminScreenPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Admin Action Page",
              style: GoogleFonts.titilliumWeb(textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        drawer: const AdminSideNavigationDrawer(),
      );
}

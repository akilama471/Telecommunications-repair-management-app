import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telecom_worker_manager_flutter/module/admin_module/components/admin_side_navigation_drawer.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "Admin Dashboard",
                style: GoogleFonts.titilliumWeb(textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
              ),
            ),
          ),
          body: Container(),
          drawer: const AdminSideNavigationDrawer(),
        ),
      );
}

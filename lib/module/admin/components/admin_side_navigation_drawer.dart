import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telecom_worker_manager_flutter/config/app_assests.dart';
import 'package:telecom_worker_manager_flutter/module/authentication/services/authentication_services.dart';

class AdminSideNavigationDrawer extends StatelessWidget {
  const AdminSideNavigationDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          navigationHeader(context),
          ListTile(
            leading: const Image(
              image: AssetImage(
                AssetStore.dashboardIcon,
              ),
              height: 24,
            ),
            title: const Text('Dashboard'),
            onTap: () => {
              // Get.offAll(() => const AdminDashboardPage())
            },
          ),
          ListTile(
            leading: const Image(
              image: AssetImage(
                AssetStore.fixIcon,
              ),
              height: 24,
            ),
            title: const Text('Regions'),
            onTap: () => {
              //Get.offAll(() => const AdminParameterPage())
            },
          ),
          ListTile(
            leading: const Image(
              image: AssetImage(
                AssetStore.employeeIcon,
              ),
              height: 24,
            ),
            title: const Text('Employee'),
            onTap: () => {
              //Get.offAll(() => const AdminWorkerPage())
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => {
              Navigator.of(context).pop()
            },
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
            onTap: () => {
              Navigator.of(context).pop()
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {
              AuthenticationServices().logOut()
            },
          ),
        ],
      ));

  Widget navigationHeader(BuildContext context) => Material(
        color: Colors.blue.shade700,
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
              top: 18 + MediaQuery.of(context).padding.top,
              bottom: 18,
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                    AssetStore.profileIcon,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Admin",
                  style: GoogleFonts.titilliumWeb(textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      );
}

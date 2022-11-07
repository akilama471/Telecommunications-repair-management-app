import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminScreenPage extends StatelessWidget {
  static const String routeName = '/admin-page';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const AdminScreenPage());
  }

  const AdminScreenPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Admin Action Page",
              style: GoogleFonts.titilliumWeb(
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        drawer: const DlsNavigationDrawer(),
      );
}

class DlsNavigationDrawer extends StatelessWidget {
  const DlsNavigationDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          navigationHeader(context),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
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
                    "assets/images/logo/profile.png",
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Admin",
                  style: GoogleFonts.titilliumWeb(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      );
}

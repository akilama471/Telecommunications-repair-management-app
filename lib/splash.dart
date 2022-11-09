// ignore_for_file: prefer_const_constructors, unnecessary_this
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:telecom_worker_manager_flutter/screens/main/authentication.dart';
import 'package:telecom_worker_manager_flutter/screens/action/permission.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initAppState();
  }

  initAppState() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.location,
      Permission.phone,
    ].request();
    if (statuses[Permission.location] == PermissionStatus.granted &&
        statuses[Permission.phone] == PermissionStatus.granted) {
      await Future.delayed(Duration(milliseconds: 2000), () {});

      Navigator.pushReplacement(
          this.context, MaterialPageRoute(builder: (context) => AuthGate()));
    } else {
      await Future.delayed(Duration(milliseconds: 1000), () {});
      Navigator.pushReplacement(this.context,
          MaterialPageRoute(builder: (context) => PermisionNotGranted()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.blue,
                )),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Text(
                'Telecom Worker Manager',
                style: GoogleFonts.titilliumWeb(
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

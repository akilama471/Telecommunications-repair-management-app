// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/config/app_assests.dart';

class PermisionNotGranted extends StatefulWidget {
  const PermisionNotGranted({Key? key}) : super(key: key);

  @override
  PermisionNotGrantedState createState() => PermisionNotGrantedState();
}

class PermisionNotGrantedState extends State<PermisionNotGranted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Some Required Permission Not Granted',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Padding(
              padding: EdgeInsets.all(5),
              child: Image.asset(AssetStore.permissionHeader,
                  width: double.infinity, fit: BoxFit.fitWidth)),
          SizedBox(height: 10),
          SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)))),
                child: Padding(
                    padding: EdgeInsets.all(14),
                    child: Text(
                      'Open App Settings',
                      style: TextStyle(fontSize: 16),
                    )),
              ))
        ]),
      ),
    );
  }
}

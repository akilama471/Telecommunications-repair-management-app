import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/config/app_assests.dart';

class DlsTopDetailsRow extends StatelessWidget {
  const DlsTopDetailsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          )),
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: const <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(AssetStore.profileIcon),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Hi, Akila",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Row(
              children: [
                const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/admin-page',
                      );
                    },
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    )),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}

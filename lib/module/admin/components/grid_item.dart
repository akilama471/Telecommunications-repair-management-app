import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridItemWidget extends StatelessWidget {
  final IconData wIcon;
  final String wTitle;
  final Widget wPage;

  const GridItemWidget({
    Key? key,
    required this.wIcon,
    required this.wTitle,
    required this.wPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => {
          Get.to(() => wPage)
        },
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.blue.withOpacity(0.9),
              child: Icon(
                wIcon,
                size: 16.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(wTitle, style: const TextStyle(fontSize: 11.0)),
          ],
        ),
      );
}

import 'package:flutter/material.dart';

class DlsForgetPasswordBtnWidget extends StatelessWidget {
  const DlsForgetPasswordBtnWidget(
      {Key? key,
      required this.btnIcon,
      required this.btnTitle,
      required this.btnSubTitle,
      required this.onTap})
      : super(key: key);

  final IconData btnIcon;
  final String btnTitle, btnSubTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade200,
        ),
        child: Row(
          children: [
            Icon(
              btnIcon,
              size: 60.0,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width - 170,
                child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          btnTitle,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          btnSubTitle,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}

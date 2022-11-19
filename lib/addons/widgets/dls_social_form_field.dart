import 'package:flutter/material.dart';

class DlsSocialFormFieldWidget extends StatefulWidget {
  final double width;
  final Widget icon;
  final Function() onPressed;
  final String title;

  const DlsSocialFormFieldWidget(
      {Key? key,
      required this.width,
      required this.icon,
      required this.onPressed,
      required this.title})
      : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _DlsSocialFormFieldWidget createState() => _DlsSocialFormFieldWidget();
}

class _DlsSocialFormFieldWidget extends State<DlsSocialFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: widget.width,
        child: OutlinedButton.icon(
          icon: widget.icon,
          onPressed: widget.onPressed,
          label: Text(widget.title),
        ));
  }
}

import 'package:flutter/material.dart';

class DlsTextFormFieldWidget extends StatefulWidget {
  // TextFormField Properties
  final TextEditingController? ctrl;
  final TextInputType inputType;
  final String labelText;
  final String hintText;
  final double textSize;
  final int? maxLength;
  final IconData? prefixIcon;
  final double? prefixIconSize;
  final TextInputAction textInputAction;

  const DlsTextFormFieldWidget({
    Key? key,
    this.ctrl,
    required this.inputType,
    required this.labelText,
    required this.hintText,
    required this.textSize,
    this.maxLength,
    this.prefixIcon,
    this.prefixIconSize,
    this.textInputAction = TextInputAction.next,
  }) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _DlsTextFormFieldWidget createState() => _DlsTextFormFieldWidget();
}

class _DlsTextFormFieldWidget extends State<DlsTextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.ctrl,
      keyboardType: widget.inputType,
      maxLength: widget.maxLength,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        prefixIcon: Icon(
          widget.prefixIcon,
          size: widget.prefixIconSize,
        ),
        labelText: widget.labelText,
        hintText: widget.hintText,
        border: const OutlineInputBorder(),
      ),
      textInputAction: widget.textInputAction,
      style: TextStyle(fontSize: widget.textSize),
    );
  }
}

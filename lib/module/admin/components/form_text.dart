import 'package:flutter/material.dart';

class FormTextWidget extends StatefulWidget {
  final TextInputType inputType;
  final String labelText;
  final String hintText;
  final int? maxLength;
  final IconData? prefixIcon;
  final TextInputAction textInputAction;

  const FormTextWidget({
    Key? key,
    required this.inputType,
    required this.labelText,
    required this.hintText,
    this.maxLength,
    this.prefixIcon,
    this.textInputAction = TextInputAction.next,
  }) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _FormTextWidget createState() => _FormTextWidget();
}

class _FormTextWidget extends State<FormTextWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.inputType,
      maxLength: widget.maxLength,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        prefixIcon: Icon(
          widget.prefixIcon,
          size: 14,
        ),
        labelText: widget.labelText,
        hintText: widget.hintText,
        border: const OutlineInputBorder(),
      ),
      textInputAction: widget.textInputAction,
      style: const TextStyle(fontSize: 14),
    );
  }
}

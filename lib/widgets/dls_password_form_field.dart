import 'package:flutter/material.dart';

class DlsPassFormFieldWidget extends StatefulWidget {
  // TextFormField Properties
  final TextEditingController? ctrl;
  final TextInputType inputType;
  final String labelText;
  final String hintText;
  final double textSize;
  final int? maxLength;
  final IconData? prefixIcon;
  final double? prefixIconSize;
  final Function()? suffixAction;
  final IconData? suffixIconShow;
  final IconData? suffixIconHide;
  final double? suffixIconSize;
  final TextInputAction textInputAction;

  const DlsPassFormFieldWidget({
    Key? key,
    this.ctrl,
    required this.inputType,
    required this.labelText,
    required this.hintText,
    required this.textSize,
    this.maxLength,
    this.prefixIcon,
    this.prefixIconSize,
    this.suffixAction,
    this.suffixIconShow,
    this.suffixIconHide,
    this.suffixIconSize,
    this.textInputAction = TextInputAction.done,
  }) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _DlsPassFormFieldWidget createState() => _DlsPassFormFieldWidget();
}

class _DlsPassFormFieldWidget extends State<DlsPassFormFieldWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.ctrl,
      keyboardType: widget.inputType,
      maxLength: widget.maxLength,
      obscureText: _obscureText,
      obscuringCharacter: '*',
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          prefixIcon: Icon(
            widget.prefixIcon,
            size: widget.prefixIconSize,
          ),
          labelText: widget.labelText,
          hintText: widget.hintText,
          border: const OutlineInputBorder(),
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              icon: Icon(
                _obscureText ? widget.suffixIconShow : widget.suffixIconHide,
                size: widget.suffixIconSize,
              ))),
      textInputAction: widget.textInputAction,
      style: TextStyle(fontSize: widget.textSize),
    );
  }
}

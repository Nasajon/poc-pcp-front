import 'package:flutter/material.dart';

class PcpTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const PcpTextFormField(
      {Key? key, required this.controller, required this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontFamily: 'PT Sans',
        height: 1.2,
        fontSize: 20,
        color: Color(0xFF5A5A5A));
    final floatingLabelStyle = textStyle.copyWith(fontSize: 14);

    const border = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: Color(0xFF999999)));

    return TextFormField(
        controller: controller,
        style: textStyle,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            labelText: labelText,
            border: border,
            floatingLabelStyle: floatingLabelStyle,
            labelStyle: textStyle));
  }
}

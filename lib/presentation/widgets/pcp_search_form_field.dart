import 'package:flutter/material.dart';

class PcpSearchFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  final _border = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      borderSide: BorderSide(color: Color.fromRGBO(204, 204, 204, 1)));
  final _hintStyle = const TextStyle(
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w400,
      fontFamily: 'PT Sans',
      fontSize: 16,
      height: 1.2,
      color: Color.fromRGBO(153, 153, 153, 1));

  const PcpSearchFormField(
      {Key? key, required this.controller, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          border: _border,
          enabledBorder: _border,
          hintText: hintText,
          hintStyle: _hintStyle,
          suffixIcon: const Icon(
            Icons.search,
            color: Color(0xFF00459B),
            size: 22,
          ),
          suffixStyle: const TextStyle(fontWeight: FontWeight.w900)),
    );
  }
}

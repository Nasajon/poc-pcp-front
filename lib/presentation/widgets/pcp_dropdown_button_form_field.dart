import 'package:flutter/material.dart';

class PcpDropdownButtonFormField<T> extends StatelessWidget {
  final T? initialValue;
  final List<PcpDropdownMenuItem<T>> items;
  final String labelText;
  final void Function(T?)? onChanged;

  const PcpDropdownButtonFormField({
    Key? key,
    required this.items,
    required this.labelText,
    this.initialValue,
    this.onChanged,
  }) : super(key: key);

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

    return DropdownButtonFormField<T>(
        value: initialValue,
        style: textStyle,
        selectedItemBuilder: (context) => items
            .map((item) => Text(
                  item.text,
                  style: textStyle,
                ))
            .toList(),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          border: border,
          // disabledBorder: border,
          // enabledBorder: border,
          // errorBorder: border,
          // focusedBorder: border,
          floatingLabelStyle: floatingLabelStyle,
          helperStyle: textStyle,
          labelStyle: textStyle,
          labelText: labelText,
          suffixStyle: textStyle,
        ),
        items: items
            .map((item) => DropdownMenuItem(
                value: item.value,
                child: Text(
                  item.text,
                  style: textStyle.copyWith(fontSize: 16),
                )))
            .toList(),
        onChanged: onChanged);
  }
}

class PcpDropdownMenuItem<T> {
  final T value;
  final String text;

  PcpDropdownMenuItem({required this.value, required this.text});
}

import 'package:flutter/material.dart';

class DefaultInputDecoration {
  static TextStyle get textStyle => const TextStyle(
      fontFamily: 'PT Sans',
      height: 1.2,
      fontSize: 20,
      color: Color(0xFF5A5A5A));

  static BorderSide get borderSide =>
      const BorderSide(color: Color(0xFF999999), width: 2);

  static OutlineInputBorder get border => OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(4)),
      borderSide: borderSide);

  static InputDecoration get inputDecoration => InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        border: border,
        errorStyle: textStyle.copyWith(
          color: const Color(0xFFDC3545),
          fontSize: 14,
        ),
        fillColor: const Color(0xFFF2F2F2),
        disabledBorder: border.copyWith(
            borderSide: borderSide.copyWith(
                color: const Color.fromRGBO(28, 27, 31, 0.12), width: 1)),
        enabledBorder:
            border.copyWith(borderSide: borderSide.copyWith(width: 1)),
        focusedBorder: border.copyWith(
            borderSide: borderSide.copyWith(color: const Color(0xFF00459B))),
        errorBorder: border.copyWith(
            borderSide: borderSide.copyWith(color: const Color(0xFFC82333))),
        floatingLabelStyle: MaterialStateTextStyle.resolveWith((states) {
          final floatingLabelStyle = textStyle.copyWith(fontSize: 14);

          if (states.contains(MaterialState.error)) {
            return floatingLabelStyle.copyWith(color: const Color(0xFFC82333));
          }

          if (states.contains(MaterialState.focused)) {
            return floatingLabelStyle.copyWith(color: const Color(0xFF00459B));
          }

          if (states.contains(MaterialState.disabled)) {
            return floatingLabelStyle.copyWith(
                color: floatingLabelStyle.color?.withOpacity(0.38));
          }

          return floatingLabelStyle;
        }),
        labelStyle: MaterialStateTextStyle.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return textStyle.copyWith(
                color: textStyle.color?.withOpacity(0.38));
          }

          return textStyle;
        }),
      );
}

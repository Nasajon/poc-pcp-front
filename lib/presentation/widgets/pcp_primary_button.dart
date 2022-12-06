import 'package:flutter/material.dart';

class PcpPrimaryButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const PcpPrimaryButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: primaryButtonStyle,
        onPressed: onPressed,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            child: Text(text)));
  }
}

final primaryButtonStyle = ButtonStyle(
    padding: MaterialStateProperty.all(EdgeInsets.zero),
    shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000))),
    textStyle: MaterialStateProperty.resolveWith((states) {
      const textStyle = TextStyle(
          color: Colors.white,
          fontFamily: 'PT Sans',
          fontSize: 14,
          height: 1.4,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.3);

      if (states.contains(MaterialState.disabled)) {
        return textStyle.copyWith(color: const Color(0xFF999999));
      }

      return textStyle;
    }),
    backgroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.hovered) ||
          states.contains(MaterialState.focused) ||
          states.contains(MaterialState.pressed)) {
        return const Color(0xFF005BB6);
      }

      if (states.contains(MaterialState.disabled)) {
        return const Color(0xFFEAEAEA);
      }

      return const Color(0xFF00459B);
    }),
    elevation: MaterialStateProperty.resolveWith((states) {
      return states.contains(MaterialState.hovered) ? 4 : 0;
    }),
    foregroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return const Color(0xFF999999);
      }

      return Colors.white;
    }));

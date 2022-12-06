import 'package:flutter/material.dart';

class PcpTextButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const PcpTextButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: textButtonStyle,
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Text(text),
        ));
  }
}

final textButtonStyle = ButtonStyle(
    padding: MaterialStateProperty.all(EdgeInsets.zero),
    shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000))),
    backgroundColor: MaterialStateProperty.all(Colors.white),
    textStyle: MaterialStateProperty.resolveWith((states) {
      const textStyle = TextStyle(
          color: Color(0xFF00459B),
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
    elevation: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.hovered)) {
        return 6;
      }

      if (states.contains(MaterialState.focused) ||
          states.contains(MaterialState.pressed)) {
        return 4;
      }

      return 0;
    }),
    foregroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return const Color(0xFF999999);
      }

      return const Color(0xFF00459B);
    }));

import 'package:flutter/material.dart';

class PcpTextButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const PcpTextButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Text(text,
              style: const TextStyle(
                  color: Color(0xFF00459B),
                  fontFamily: 'PT Sans',
                  fontSize: 14,
                  height: 1.4,
                  letterSpacing: 0.3)),
        ));
  }
}

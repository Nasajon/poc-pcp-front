import 'package:flutter/material.dart';

class PcpPrimaryButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const PcpPrimaryButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor: MaterialStateProperty.all(const Color(0xFF00459B)),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            textStyle: MaterialStateProperty.all(const TextStyle(
                color: Colors.white,
                fontFamily: 'PT Sans',
                fontSize: 14,
                height: 1.4,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.3)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1000)))),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Text(text),
        ));
  }
}

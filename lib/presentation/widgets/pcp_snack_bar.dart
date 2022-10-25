import 'package:flutter/material.dart';

showSnackBar({required BuildContext context, required String text}) {
  final screenSize = MediaQuery.of(context).size;

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
      width: screenSize.width > 635 ? 635 : screenSize.width - 48,
      content: Text(text)));
}

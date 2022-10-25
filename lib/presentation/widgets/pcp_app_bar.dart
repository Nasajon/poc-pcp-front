import 'package:flutter/material.dart';

class PcpAppBar extends AppBar {
  PcpAppBar({super.key, required String title})
      : super(
            title: Text(title),
            foregroundColor: const Color(0xFF5A5A5A),
            backgroundColor: Colors.white,
            toolbarHeight: 64,
            titleTextStyle: const TextStyle(
                color: Color(0xFF5A5A5A),
                fontSize: 24,
                height: 1.2,
                fontWeight: FontWeight.w700,
                fontFamily: 'PT Sans'));
}

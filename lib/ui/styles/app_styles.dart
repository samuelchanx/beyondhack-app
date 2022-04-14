import 'package:flutter/material.dart';

class AppStyles {
  static final linearGradient = LinearGradient(
    colors: [
      Color(0xffA39FEC).withOpacity(0.5),
      Color(0xffF4CDC9).withOpacity(0.5),
      Color(0xffF4CDC9).withOpacity(0.5),
    ],
  );
  static const appBoxShadows = [
    BoxShadow(
      color: Color(0x29000000),
      offset: Offset(0, 3),
      blurRadius: 6,
    )
  ];
}

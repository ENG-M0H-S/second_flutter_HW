import 'package:flutter/material.dart';
class AppColors {
  static const Gradient loginGradient =LinearGradient(
      colors: [
        Color(0xFF4CAF50),
        Color(0xFF2196F3),
      ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient signupGradient =LinearGradient(
      colors: [
        Color(0xFF27A0B0),
        Color(0xFF0678D7),
      ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const primary = Colors.lightGreen;
  static const secondary = Colors.cyan;
}